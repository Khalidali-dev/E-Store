part of "products_bloc.dart";

@freezed
class ProductsState with _$ProductsState {
  factory ProductsState({
    ProductsModel? products,
    APIStatus? status,
  }) = _ProductsState;

  factory ProductsState.initial() {
    return ProductsState(products: null, status: APIStatus.initial);
  }
}
