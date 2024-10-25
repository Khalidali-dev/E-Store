import '../../../../src.dart';

class ProductsRepositoryImpl implements ProductsRepository {
  final HomeRemoteDataSource remoteDataSource;
  final LocalProductsStorage productsStorage;

  ProductsRepositoryImpl(
      {required this.remoteDataSource, required this.productsStorage});

  @override
  Future<Either<Failure, List<ProductsModel>>> getProducts(
      {required int skip, int limit = 10}) async {
    bool isOnline = await checkConnectivity();
    if (isOnline) {
      try {
        List<ProductsModel> remoteUser = await remoteDataSource.getProducts();
        List<ProductsModel> data = remoteUser.skip(skip).take(limit).toList();
        productsStorage.cacheProducts(data);
        return Either.right(data);
      } catch (e) {
        if (e is ServerException) {
          return Either.left(AuthenticationFailure(e.toString()));
        } else if (e is NetworkException) {
          return Either.left(const NetworkFailure());
        } else if (e is ServerException) {
          return Either.left(const ServerFailure());
        } else {
          return Either.left(UnknownFailure(e.toString()));
        }
      }
    } else {
      List<ProductsModel> products = await productsStorage.getCachedProducts();
      if (products.isNotEmpty) {
        return Either.right(products);
      } else {
        return Either.left(const NetworkFailure());
      }
    }
  }
}
