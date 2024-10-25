import '../../../../../src.dart';
part 'products_state.dart';
part 'products_event.dart';
part 'products_bloc.freezed.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  final GetProductsUsecase getProductsUsecase;
  int currentPage = 1;
  bool isLastPage = false;
  int skip = 0;
  final int limit = 5;

  ProductsBloc(this.getProductsUsecase) : super(ProductsState.initial()) {
    // Register event handlers
    on<GetAllProducts>(getAllProducts);
    on<SearchProducts>(searchProducts);
    on<LoadMoreProducts>(loadMoreProducts);
  }

  // Handler for fetching images
  FutureOr<void> getAllProducts(
      GetAllProducts event, Emitter<ProductsState> emit) async {
    emit(state.copyWith(status: APIStatus.loading));
    final Either<Failure, List<ProductsModel>> failureOrProducts =
        await getProductsUsecase(skip: skip, limit: limit);

    failureOrProducts.fold(
        (failure) => emit(state.copyWith(status: APIStatus.error)), (products) {
      skip += limit;
      emit(state.copyWith(products: products, status: APIStatus.success));
    });
  }

  Future<void> searchProducts(
      SearchProducts event, Emitter<ProductsState> emit) async {
    // Check if search value is empty
    if (event.query.isEmpty) {
      // Reset to show all customers when search field is cleared
      emit(state.copyWith(
          status: APIStatus.success,
          filteredProducts: state.products, // Show all customers again
          message: ''));
    } else {
      // Filter the customers based on search input
      List<ProductsModel> filteredItems = state.products!.where((item) {
        return item.title.toLowerCase().contains(event.query.toLowerCase());
      }).toList();

      // Emit state based on search result
      if (filteredItems.isEmpty) {
        emit(state.copyWith(
            status: APIStatus.success,
            filteredProducts: [],
            message: "Product not found"));
      } else {
        emit(state.copyWith(
            status: APIStatus.success,
            filteredProducts: filteredItems,
            message: ''));
      }
    }
  }

  FutureOr<void> loadMoreProducts(
      LoadMoreProducts event, Emitter<ProductsState> emit) async {
    // Prevent loading more if already in loadingMore state
    if (state.status == APIStatus.loadingMore || state.hasMaxReached!) return;

    emit(state.copyWith(status: APIStatus.loadingMore));

    // Calculate the skip value based on how many products are currently loaded
    int currentProductCount = state.products?.length ?? 0;
    int skip = currentProductCount; // This works as skip = currentPage * limit

    // Fetch the next set of products using the updated skip value and limit
    final Either<Failure, List<ProductsModel>> failureOrProducts =
        await getProductsUsecase(skip: skip, limit: limit);

    final isOnline = await checkConnectivity();

    // Handle the result from the use case
    failureOrProducts.fold(
      (error) => emit(state.copyWith(status: APIStatus.error)),
      (products) {
        // Check if the new products list is not empty
        if (products.isNotEmpty) {
          final updatedProducts = List<ProductsModel>.from(state.products ?? [])
            ..addAll(products);

          // Emit the updated state with new products and set the status to success
          emit(state.copyWith(
            status: APIStatus.success,
            products: isOnline ? updatedProducts : products,
          ));
        } else {
          // If no more products, set the status to success but don't update the product list
          emit(state.copyWith(status: APIStatus.success, hasMaxReached: true));
        }
      },
    );
  }
}
