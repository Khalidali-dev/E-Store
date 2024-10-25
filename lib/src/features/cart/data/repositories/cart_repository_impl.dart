import '../../../../src.dart';

class CartRepositoryImpl implements CartRepository {
  final CartRemoteDataSource remoteDataSource;

  CartRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<CartModel>>> getCartProducts() async {
    try {
      List<CartModel> remoteUser = await remoteDataSource.getCartProducts();
      return Either.right(remoteUser);
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
  }

  @override
  Future<void> addToCart(Map<String, dynamic> json) async {
    try {
      await remoteDataSource.addToCart(json);
    } catch (e) {
      if (e is ServerException) {
        throw AuthenticationFailure(e.toString());
      } else if (e is NetworkException) {
        throw const NetworkFailure();
      } else if (e is ServerException) {
        throw const ServerFailure();
      } else {
        throw UnknownFailure(e.toString());
      }
    }
  }

  @override
  Future<void> deleteCartProducts(String id) async {
    try {
      await remoteDataSource.deleteCartProducts(id);
    } catch (e) {
      if (e is ServerException) {
        throw AuthenticationFailure(e.toString());
      } else if (e is NetworkException) {
        throw const NetworkFailure();
      } else if (e is ServerException) {
        throw const ServerFailure();
      } else {
        throw UnknownFailure(e.toString());
      }
    }
  }

  @override
  Future<void> editCartProducts(
      {required String id, required int quantity}) async {
    try {
      await remoteDataSource.editCartProducts(quantity: quantity, id: id);
    } catch (e) {
      if (e is ServerException) {
        throw AuthenticationFailure(e.toString());
      } else if (e is NetworkException) {
        throw const NetworkFailure();
      } else if (e is ServerException) {
        throw const ServerFailure();
      } else {
        throw UnknownFailure(e.toString());
      }
    }
  }
}
