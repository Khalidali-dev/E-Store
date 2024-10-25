import '../../../../src.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

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
                      title: const Text("Cart"),
                      centerTitle: true,
                    ),
                    bottomNavigationBar: BottomNavBarWidget(
                      state: state,
                    ),
                    body: CartBodyWidget(state: state));
          default:
            return const NoDataWidget();
        }
      },
    );
  }
}
