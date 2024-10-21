import '../../../../src.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ContainerWidget(
      borderRadius: BorderRadius.circular(0),
      image: image,
      child: Align(
        alignment: Alignment.topLeft,
        child: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
      ),
    ));
  }
}
