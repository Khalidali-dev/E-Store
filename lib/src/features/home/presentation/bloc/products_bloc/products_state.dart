part of "products_bloc.dart";

@freezed
class ProductsState with _$ProductsState {
  factory ProductsState(
      {List<ProductsModel>? products,
      List<ProductsModel>? filteredProducts,
      APIStatus? status,
      bool? hasMaxReached,
      String? message}) = _ProductsState;

  factory ProductsState.initial() {
    return ProductsState(
        products: [],
        hasMaxReached: false,
        filteredProducts: [],
        status: APIStatus.initial,
        message: '');
  }
}
