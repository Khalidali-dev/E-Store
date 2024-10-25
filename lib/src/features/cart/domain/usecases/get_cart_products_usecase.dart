import '../../../../src.dart';

class GetCartProductsUsecase {
  final CartRepository cartRepository;
  GetCartProductsUsecase(this.cartRepository);

  Future<Either<Failure, List<CartModel>>> call() async {
    return await cartRepository.getCartProducts();
  }
}

class AddCartProductsUsecase {
  final CartRepository cartRepository;
  AddCartProductsUsecase(this.cartRepository);

  Future<void> call(Map<String, dynamic> json) async {
    final products = await cartRepository.addToCart(json);
    return products;
  }
}

class EditCartProductsUsecase {
  final CartRepository cartRepository;
  EditCartProductsUsecase(this.cartRepository);

  Future<void> call({required int quantity, required String id}) async {
    final products =
        await cartRepository.editCartProducts(id: id, quantity: quantity);
    return products;
  }
}

class DeleteCartProductsUsecase {
  final CartRepository cartRepository;
  DeleteCartProductsUsecase(this.cartRepository);

  Future<void> call(String id) async {
    final products = await cartRepository.deleteCartProducts(id);
    return products;
  }
}
