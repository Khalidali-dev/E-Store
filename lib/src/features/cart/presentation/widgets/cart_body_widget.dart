import '../../../../src.dart';

// ignore: must_be_immutable
class CartBodyWidget extends StatelessWidget {
  CartBodyWidget({super.key, required this.state});

  final CartState state;

  Timer? _debounce;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: state.cartItems!.length,
            padding: const EdgeInsets.only(bottom: 20),
            itemBuilder: (context, index) {
              var cartItem = state.cartItems![index];
              ValueNotifier<int> cartQuantity =
                  ValueNotifier<int>(cartItem.quantity);

              return ContainerWidget(
                isMargin: true,
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                isPadding: true,
                padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Hero(
                      tag: cartItem.image,
                      child: CachedNetworkImage(
                        imageUrl: cartItem.image,
                        width: 80,
                        height: 120,
                      ),
                    ),
                    width(10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          height(10),
                          Text(
                            cartItem.title,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                          height(5),
                          Text(
                            "\$${(cartItem.price).toStringAsFixed(2)}",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          ValueListenableBuilder(
                            valueListenable: cartQuantity,
                            builder: (context, value, child) => Text(
                              "${cartItem.price} * ${cartQuantity.value} = ${(cartItem.price * cartQuantity.value).toStringAsFixed(2)}\$ ",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(fontWeight: FontWeight.normal),
                            ),
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {
                            context
                                .read<CartBloc>()
                                .add(DeleteCartItems(cartItem.id.toString()));
                            context.read<CartBloc>().add(GetAllCartItems());
                          },
                          icon: const Icon(
                            Icons.delete,
                            color: Colors.red,
                          ),
                        ),
                        QuantityWidget(
                            isCart: true,
                            isDecrement: true,
                            price: cartItem.price,
                            gap: 2,
                            tf: 15,
                            qf: 20,
                            w: 35,
                            decrement: () {
                              if (cartQuantity.value > 1) {
                                cartQuantity.value--;
                                debounceUpdateCartItem(
                                    id: cartItem.id.toString(),
                                    quantity: cartQuantity.value,
                                    context: context);
                              }
                            },
                            quantity: cartQuantity,
                            increment: () {
                              cartQuantity.value++;
                              debounceUpdateCartItem(
                                  id: cartItem.id.toString(),
                                  quantity: cartQuantity.value,
                                  context: context);
                            }),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  void debounceUpdateCartItem(
      {required String id,
      required int quantity,
      required BuildContext context}) {
    _debounce?.cancel(); // Cancel any existing debounce
    _debounce = Timer(const Duration(seconds: 1), () {
      if (context.mounted) {
        context.read<CartBloc>().add(EditCartItems(quantity: quantity, id: id));
        context.read<CartBloc>().add(GetAllCartItems());
      }
    });
  }
}
