import '../../../../../src.dart';

part 'products_state.dart';
part 'products_event.dart';
part 'products_bloc.freezed.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  final GetProductsUsecase getImagesUsecase;

  ProductsBloc(this.getImagesUsecase) : super(ProductsState.initial()) {
    // Register event handlers
    on<GetAllImages>(getAllImages);
    on<InternetManager>(_onCheckConnectivity);

    _initWebConnectivity();
  }

  // Handler for fetching images
  FutureOr<void> getAllImages(
      GetAllImages event, Emitter<ProductsState> emit) async {
    emit(state.copyWith(status: APIStatus.loading));
    final Either<Failure, ProductsModel> failureOrImages =
        await getImagesUsecase();
    failureOrImages.fold(
      (failure) => emit(state.copyWith(status: APIStatus.error)),
      (images) =>
          emit(state.copyWith(images: images, status: APIStatus.success)),
    );
  }

  // Handle event to check connectivity
  FutureOr<void> _onCheckConnectivity(
      InternetManager event, Emitter<ProductsState> emit) {
    final bool isOnline = html.window.navigator.onLine!;
    if (isOnline) {
      emit(state.copyWith(isConnected: true));
    } else {
      emit(state.copyWith(isConnected: false));
    }
  }

  void _initWebConnectivity() {
    html.window.addEventListener('online', (_) {
      add(InternetManager());
    });
    html.window.addEventListener('offline', (_) {
      add(InternetManager());
    });
  }
}
