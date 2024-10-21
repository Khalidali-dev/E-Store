part of "cart_bloc.dart";

@freezed
class CartEvent with _$CartEvent {
  factory CartEvent.getAllCartItems() = GetAllCartItems;
}
