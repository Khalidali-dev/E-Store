import '../../src.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    super.key,
    this.width,
    this.height,
    this.borderRadius,
    this.isWhite = false,
    required this.child,
    this.border,
    this.isPadding = false,
    this.isImage = false,
    this.color,
    this.isMargin = false,
    this.alignment,
    this.margin,
    this.padding,
    this.colorsList,
    this.image = '',
    this.isShadow = true,
  });

  final double? width, height;
  final bool? isWhite, isPadding, isImage, isMargin;
  final Widget child;
  final Border? border;
  final Color? color;
  final BorderRadius? borderRadius;
  final Alignment? alignment;
  final EdgeInsetsGeometry? margin, padding;
  final List<Color>? colorsList;
  final String image;
  final bool isShadow;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: width ?? size.width,
      height: height,
      alignment: alignment ?? Alignment.topRight,
      margin: isMargin == true ? margin : const EdgeInsets.all(0),
      padding: isPadding == true ? padding : const EdgeInsets.all(10),
      decoration: image == ''
          ? BoxDecoration(
              borderRadius: borderRadius ?? BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(-2, 2),
                    blurRadius: 5,
                    color: Colors.grey.withOpacity(.5))
              ],
              color: color ?? Theme.of(context).scaffoldBackgroundColor,
              border: border ?? Border.all(width: 0, color: Colors.transparent),
            )
          : BoxDecoration(
              image: DecorationImage(
                  image: CachedNetworkImageProvider(image), fit: BoxFit.fill),
              borderRadius: borderRadius ?? BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(-2, 2),
                    blurRadius: 1,
                    color: Colors.grey.withOpacity(.5))
              ],
              color: color ?? Theme.of(context).scaffoldBackgroundColor,
              border: border ?? Border.all(width: 0, color: Colors.transparent),
            ),
      child: child,
    );
  }
}
