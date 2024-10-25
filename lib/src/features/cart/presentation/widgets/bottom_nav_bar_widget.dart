import '../../../../src.dart';

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({
    super.key,
    required this.state,
  });
  final CartState state;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                  Text("Grand Total",
                      style: Theme.of(context).textTheme.titleMedium),
                  Text(
                      "${state.cartItems!.map((i) => (i.price * i.quantity)).reduce((a, b) => a + b).toStringAsFixed(2)}\$",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: Colors.grey)),
                ]),
            width(10),
            ActionChip.elevated(
              tooltip: "Check Out",
              avatar: const Icon(Icons.shopping_basket),
              label: Row(
                children: [
                  const Text("Checkout"),
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
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              onPressed: () =>
                  navigateName(context: context, route: RouteName.checkOut),
              shape: const StadiumBorder(),
            ),
          ],
        ),
      ),
    );
  }
}
