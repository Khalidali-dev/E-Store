part of "cart_bloc.dart";

@freezed
class CartState with _$CartState {
  factory CartState(
      {ProductsModel? images,
      APIStatus? status,
      bool? isConnected}) = _CartState;

  factory CartState.initial() {
    return CartState(
        images: null, status: APIStatus.initial, isConnected: true);
  }
}
