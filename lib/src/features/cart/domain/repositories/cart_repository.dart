import '../../../../src.dart';

abstract class CartRepository {
  Future<Either<Failure, List<CartModel>>> getCartProducts();
  Future<void> addToCart(Map<String, dynamic> json);
  Future<void> editCartProducts({required String id, required int quantity});
  Future<void> deleteCartProducts(String id);
}
