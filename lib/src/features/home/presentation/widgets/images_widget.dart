import '../../../../src.dart';

class ImagesWidget extends StatelessWidget {
  const ImagesWidget({super.key, required this.images});

  final List images;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
      itemCount: images.length,
      itemBuilder: (context, index) {
        final image = images[index];
        return InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: () => navigate(
              context: context,
              screen: DetailsPage(image: image.largeImageURL)),
          child: ContainerWidget(
            padding: padding10,
            image: image.largeImageURL,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      const Icon(
                        Icons.visibility,
                        color: Colors.white,
                        size: 20,
                      ),
                      Text(
                        formatNumber(image.views),
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: Colors.white,
                            ),
                      ),
                      height(8),
                      const Icon(
                        Icons.thumb_up,
                        color: Colors.white,
                        size: 20,
                      ),
                      Text(
                        formatNumber(image.likes),
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: Colors.white,
                            ),
                      ),
                    ],
                  ),
                ]),
          ),
        );
      },
    );
  }

  String formatNumber(int num) {
    if (num >= 1000000000) {
      return '${(num / 1000000000).toStringAsFixed(1).replaceAll('.0', '')}B';
    } else if (num >= 1000000) {
      return '${(num / 1000000).toStringAsFixed(1).replaceAll('.0', '')}M';
    } else if (num >= 1000) {
      return '${(num / 1000).toStringAsFixed(1).replaceAll('.0', '')}K';
    } else {
      return num.toString();
    }
  }
}
