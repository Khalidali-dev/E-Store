import '../../../../../src.dart';

part 'cart_state.dart';
part 'cart_event.dart';
part '../cart_bloc/cart_bloc.freezed.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final GetProductsUsecase getImagesUsecase;

  CartBloc(this.getImagesUsecase) : super(CartState.initial()) {
    // Register event handlers
    on<GetAllCartItems>(getAllCartItems);
  }

  // Handler for fetching images
  FutureOr<void> getAllCartItems(
      GetAllCartItems event, Emitter<CartState> emit) async {
    emit(state.copyWith(status: APIStatus.loading));
    final Either<Failure, ProductsModel> failureOrImages =
        await getImagesUsecase();
    failureOrImages.fold(
      (failure) => emit(state.copyWith(status: APIStatus.error)),
      (images) =>
          emit(state.copyWith(images: images, status: APIStatus.success)),
    );
  }
}
