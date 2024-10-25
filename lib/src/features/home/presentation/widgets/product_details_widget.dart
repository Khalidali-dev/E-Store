import '../../../../src.dart';

// ignore: must_be_immutable
class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage(
      {super.key,
      required this.image,
      required this.title,
      required this.desc,
      required this.price});
  final String title;
  final String desc;
  final String image;
  final double price;

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  ValueNotifier<int> quantity = ValueNotifier<int>(1);
  @override
  void initState() {
    context.read<CartBloc>().add(GetAllCartItems());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Padding(
          padding: padding20,
          child: SizedBox(
            height: 90,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                QuantityWidget(
                    quantity: quantity,
                    increment: () {
                      quantity.value++;
                    },
                    decrement: () =>
                        quantity.value > 1 ? quantity.value-- : null,
                    w: 50,
                    qf: 20,
                    tf: 15,
                    gap: 10,
                    price: widget.price),
                BlocBuilder<CartBloc, CartState>(builder: (context, state) {
                  return ActionChip.elevated(
                    tooltip: "Add To Cart",
                    avatar: const Icon(Icons.shopping_basket),
                    label: const Text("Add to cart"),
                    onPressed: () {
                      if (state.cartItems!
                          .any((i) => i.title == widget.title)) {
                        context.read<CartBloc>().add(GetAllCartItems());
                        toast(context, "Already exist in cart!");
                      } else {
                        context.read<CartBloc>().add(AddToCartItems({
                              "title": widget.title,
                              "quantity": quantity.value,
                              "price": widget.price,
                              "image": widget.image
                            }));
                        context.read<CartBloc>().add(GetAllCartItems());
                        toast(context, "Added to cart");
                      }
                    },
                    shape: const StadiumBorder(),
                  );
                }),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: AppColors.primaryColor,
          foregroundColor: AppColors.whiteColor,
          title: const Text("Product Details"),
          centerTitle: true,
          actions: [
            BlocBuilder<CartBloc, CartState>(builder: (context, state) {
              return BadgeWidget(
                  press: () => state.cartItems!.isNotEmpty
                      ? navigate(screen: const CartPage(), context: context)
                      : toast(context, "Empty Cart!"),
                  title: state.cartItems!.length.toString());
            }),
            width(20)
          ],
        ),
        body: SingleChildScrollView(
          padding: padding20,
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Hero(
                    tag: widget.image,
                    child: CachedNetworkImage(
                        imageUrl: widget.image, height: 230)),
              ),
              height(20),
              Text(
                widget.title,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                widget.desc,
                textAlign: TextAlign.justify,
              ),
              height(10),
              Text(
                "Price",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
              ),
              Text(
                "\$${widget.price}",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              height(10),
            ],
          ),
        ));
  }
}
