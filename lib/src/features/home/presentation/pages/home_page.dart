import 'package:pixabay/src/features/home/presentation/widgets/details_widget.dart';

import '../../../../src.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pixabay'),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: BlocBuilder<ProductsBloc, ProductsState>(
        builder: (context, state) {
          if (state.status == APIStatus.loading) {
            return ShimmerLoadingWidget(size: size);
          }

          if (state.status == APIStatus.error) {
            return const Center(child: Text(' Something is wrong'));
          }

          if (state.images != null && state.images!.hits.isNotEmpty) {
            return ImagesWidget(
              images: state.images!.hits,
            );
          }

          return const NoDataWidget();
        },
      ),
    );
  }
}
