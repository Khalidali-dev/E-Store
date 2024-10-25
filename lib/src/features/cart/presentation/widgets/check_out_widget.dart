import 'dart:developer';
import '../../../../src.dart';

// ignore: must_be_immutable
class CheckOutWidget extends StatelessWidget {
  CheckOutWidget({super.key});

  Timer? _debounce;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        switch (state.status) {
          case APIStatus.loading:
            return const Scaffold(
              body: LoadingWidget(),
            );
          case APIStatus.error:
            return const Scaffold(
              body: Center(
                child: Text("Something went wrong"),
              ),
            );
          case APIStatus.success:
            return state.cartItems!.isEmpty
                ? const NoDataWidget()
                : Scaffold(
                    appBar: AppBar(
                      backgroundColor: AppColors.primaryColor,
                      foregroundColor: AppColors.whiteColor,
                      title: const Text("Check Out"),
                      centerTitle: true,
                    ),
                    bottomNavigationBar: SizedBox(
                      height: 100,
                      child: Padding(
                        padding: padding20,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Total Price",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium),
                                  Text(
                                      "${state.cartItems!.map((i) => (i.price * i.quantity)).reduce((a, b) => a + b).toStringAsFixed(2)}\$",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(color: Colors.grey)),
                                ]),
                            width(10),
                            ActionChip.elevated(
                              tooltip: "Place an order",
                              label: Row(
                                children: [
                                  const Text("Place an order"),
                                  width(5),
                                  SizedBox(
                                    width: 40,
                                    height: 40,
                                    child: Card(
                                      color: Colors.purple.shade50,
                                      shape: const StadiumBorder(),
                                      child: Center(
                                        child: Text(
                                          state.cartItems!.length.toString(),
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              onPressed: () async {
                                User? user =
                                    await AuthService().signInWithGoogle();
                                if (context.mounted) {
                                  log("Signed in as: ${user!.displayName}");
                                  toast(context, "Order Placed Successfully");
                                } else {
                                  log("Sign in failed");
                                }
                              },
                              shape: const StadiumBorder(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    body: Column(
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
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                isPadding: true,
                                padding: const EdgeInsets.only(
                                    left: 10, top: 10, bottom: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CachedNetworkImage(
                                      imageUrl: cartItem.image,
                                      width: 50,
                                      height: 90,
                                    ),
                                    width(10),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          height(10),
                                          Text(
                                            cartItem.title,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall!
                                                .copyWith(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 13),
                                          ),
                                          height(5),
                                          Text(
                                            "\$${(cartItem.price).toStringAsFixed(2)}",
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium!
                                                .copyWith(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.purple),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        IconButton(
                                          onPressed: () {
                                            context.read<CartBloc>().add(
                                                DeleteCartItems(
                                                    cartItem.id.toString()));
                                            context
                                                .read<CartBloc>()
                                                .add(GetAllCartItems());
                                          },
                                          icon: const Icon(
                                            Icons.clear,
                                            color: Colors.red,
                                          ),
                                        ),
                                        QuantityWidget(
                                            isCart: true,
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
                                                    quantity:
                                                        cartQuantity.value,
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
                                            })
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ));
          default:
            return const SizedBox();
        }
      },
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
