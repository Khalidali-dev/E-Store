import '../../src.dart';

class BadgeWidget extends StatelessWidget {
  const BadgeWidget({super.key, required this.press, required this.title});
  final Function() press;
  final String title;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: press,
      child: Padding(
        padding: padding10,
        child: Badge(
          largeSize: 13,
          backgroundColor: Colors.black,
          offset: const Offset(10, -10),
          label: Text(title),
          child: const Icon(Icons.shopping_cart),
        ),
      ),
    );
  }
}
