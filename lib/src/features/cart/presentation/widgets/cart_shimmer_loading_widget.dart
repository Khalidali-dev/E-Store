import '../../../../src.dart';

class CartShimmerLoadingWidget extends StatelessWidget {
  const CartShimmerLoadingWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: paddingAll,
      physics: const BouncingScrollPhysics(),
      itemCount: 6,
      itemBuilder: (context, index) {
        return const ShimmerEffect();
      },
    );
  }
}
