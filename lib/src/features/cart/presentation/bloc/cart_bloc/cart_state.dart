part of "cart_bloc.dart";

@freezed
class CartState with _$CartState {
  factory CartState({
    List<CartModel>? cartItems,
    APIStatus? status,
  }) = _CartState;

  factory CartState.initial() {
    return CartState(cartItems: [], status: APIStatus.initial);
  }

  factory CartState.success(List<CartModel> cartItems) {
    return CartState(cartItems: cartItems, status: APIStatus.success);
  }

  factory CartState.error() {
    return CartState(cartItems: [], status: APIStatus.error);
  }
}
