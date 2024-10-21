part of "products_bloc.dart";

@freezed
class ProductsEvent with _$ProductsEvent {
  factory ProductsEvent.getAllProducts() = GetAllProducts;
}
