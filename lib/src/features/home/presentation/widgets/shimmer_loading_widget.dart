import '../../../../src.dart';

class ShimmerLoadingWidget extends StatelessWidget {
  const ShimmerLoadingWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: paddingAll,
      physics: const BouncingScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 30,
          mainAxisSpacing: 30,
          crossAxisCount: size.width > 1200
              ? 6
              : size.width > 500
                  ? 4
                  : 2),
      itemCount: size.width > 1200
          ? 18
          : size.width > 500
              ? 12
              : 6,
      itemBuilder: (context, index) {
        return const ShimmerEffect();
      },
    );
  }
}
