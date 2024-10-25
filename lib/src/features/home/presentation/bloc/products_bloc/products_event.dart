part of "products_bloc.dart";

@freezed
class ProductsEvent with _$ProductsEvent {
  factory ProductsEvent.getAllProducts() = GetAllProducts;
  factory ProductsEvent.searchProducts(String query) = SearchProducts;
  factory ProductsEvent.loadMoreProducts() = LoadMoreProducts;
}
