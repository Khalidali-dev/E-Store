import '../../../../../src.dart';
part 'cart_state.dart';
part 'cart_event.dart';
part 'cart_bloc.freezed.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final GetCartProductsUsecase getCartItemsUsecase;
  final AddCartProductsUsecase addToCartUsecase;
  final EditCartProductsUsecase editCartUsecase;
  final DeleteCartProductsUsecase deleteCartUsecase;

  CartBloc({
    required this.getCartItemsUsecase,
    required this.addToCartUsecase,
    required this.editCartUsecase,
    required this.deleteCartUsecase,
  }) : super(CartState.initial()) {
    // Register event handlers
    on<GetAllCartItems>(getAllCartItems);
    on<AddToCartItems>(addItemToCart);
    on<EditCartItems>(editCartItem);
    on<DeleteCartItems>(deleteCartItem);
  }

  // Handler for fetching cart items
  FutureOr<void> getAllCartItems(
      GetAllCartItems event, Emitter<CartState> emit) async {
    emit(state.copyWith(status: APIStatus.loading));
    final failureOrItems = await getCartItemsUsecase();
    failureOrItems.fold(
        (failure) => emit(state.copyWith(status: APIStatus.error)), (items) {
      emit(state.copyWith(cartItems: items, status: APIStatus.success));
    });
  }

  // Handler for adding an item to the cart
  FutureOr<void> addItemToCart(
      AddToCartItems event, Emitter<CartState> emit) async {
    emit(state.copyWith(status: APIStatus.loading));
    try {
      await addToCartUsecase(event.json);
      emit(state.copyWith(status: APIStatus.success));
    } catch (e) {
      emit(state.copyWith(status: APIStatus.error));
    }
  }

  // Handler for editing cart item quantity
  FutureOr<void> editCartItem(
      EditCartItems event, Emitter<CartState> emit) async {
    emit(state.copyWith(status: APIStatus.loading));
    try {
      await editCartUsecase(id: event.id, quantity: event.quantity);
      emit(state.copyWith(status: APIStatus.success));
    } catch (e) {
      emit(state.copyWith(status: APIStatus.error));
    }
  }

  // Handler for deleting an item from the cart
  FutureOr<void> deleteCartItem(
      DeleteCartItems event, Emitter<CartState> emit) async {
    emit(state.copyWith(status: APIStatus.loading));
    try {
      await deleteCartUsecase(event.id);
      emit(state.copyWith(status: APIStatus.success));
    } catch (e) {
      emit(state.copyWith(status: APIStatus.error));
    }
  }
}
