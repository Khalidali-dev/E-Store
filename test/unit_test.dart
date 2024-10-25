import 'package:estore/src/src.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';

void main() {
  group('CartBloc', () {
    late CartBloc cartBloc;

    setUp(() {
      cartBloc = CartBloc(
          addToCartUsecase: getIt<AddCartProductsUsecase>(),
          deleteCartUsecase: getIt<DeleteCartProductsUsecase>(),
          getCartItemsUsecase: getIt<GetCartProductsUsecase>(),
          editCartUsecase: getIt<EditCartProductsUsecase>());
    });

    tearDown(() {
      cartBloc.close();
    });

    blocTest<CartBloc, CartState>(
      'emits [CartLoading, CartLoaded] with updated total price when product is added',
      build: () => cartBloc,
      act: (bloc) => bloc.add(AddToCartItems(
          {"id": '1', "title": 'Product 1', "price": 10.0, "quantity": 1})),
      expect: () => [
        CartState.initial(),
        CartState.success(
            [CartModel(id: '1', title: 'Product 1', price: 10.0, quantity: 1)]),
      ],
      verify: (bloc) {
        final totalPrice = bloc.state.cartItems!.fold(
            0, (total, item) => total + item.price.toInt() * item.quantity);
        expect(totalPrice, 10.0);
      },
    );
  });
}
