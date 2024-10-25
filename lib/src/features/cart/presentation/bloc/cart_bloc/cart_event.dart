part of "cart_bloc.dart";

@freezed
class CartEvent with _$CartEvent {
  factory CartEvent.getAllCartItems() = GetAllCartItems;
  factory CartEvent.addToCart(Map<String, dynamic> json) = AddToCartItems;
  factory CartEvent.editCartItems({required int quantity, required String id}) =
      EditCartItems;
  factory CartEvent.deleteCartItems(String id) = DeleteCartItems;
}
