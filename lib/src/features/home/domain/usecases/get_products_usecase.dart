import '../../../../src.dart';

class GetProductsUsecase {
  final ProductsRepository productsRepository;
  GetProductsUsecase(this.productsRepository);

  Future<Either<Failure, List<ProductsModel>>> call(
      {required int skip, required int limit}) async {
    final Either<Failure, List<ProductsModel>> products =
        await productsRepository.getProducts(skip: skip, limit: limit);
    return products;
  }
}
