import '../../../../src.dart';

class ProductsWidget extends StatefulWidget {
  const ProductsWidget({
    super.key,
    required this.products,
    required this.status,
  });

  final List<ProductsModel> products;
  final APIStatus status;

  @override
  _ProductsWidgetState createState() => _ProductsWidgetState();
}

class _ProductsWidgetState extends State<ProductsWidget> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    // Add a scroll listener to the controller
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        // Reached the end of the list, dispatch LoadMoreProducts event
        context.read<ProductsBloc>().add(LoadMoreProducts());
      }
    });
  }

  @override
  void dispose() {
    // Clean up the scroll controller to avoid memory leaks
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: ListView.builder(
        controller: _scrollController,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        physics: const BouncingScrollPhysics(),
        itemCount: widget.products.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final product = widget.products[index];
          return InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () => navigate(
                context: context,
                screen: ProductDetailsPage(
                  image: product.image,
                  title: product.title,
                  desc: product.description,
                  price: product.price,
                )),
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10),
              child: ContainerWidget(
                width: size.width,
                isPadding: true,
                padding: const EdgeInsets.all(20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: SizedBox(
                        width: 100,
                        height: 130,
                        child: Card(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                                child: Hero(
                              tag: product.image,
                              child: CachedNetworkImage(
                                imageUrl: product.image,
                                fit: BoxFit.fill,
                              ),
                            )),
                          ),
                        ),
                      ),
                    ),
                    width(10),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product.title,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                          height(5),
                          Text(
                            product.description,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.bodySmall!,
                          ),
                          height(5),
                          Text(
                            '\$${product.price.toStringAsFixed(2)}',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
