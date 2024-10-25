import 'package:flutter/cupertino.dart';

import '../../../../src.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        foregroundColor: AppColors.whiteColor,
        title: const Text('E Store'),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: CupertinoSearchTextField(
              placeholder: 'Search Product',
              decoration: BoxDecoration(
                  color: AppColors.primaryColor.shade50,
                  borderRadius: BorderRadius.circular(10)),
              onChanged: (value) =>
                  context.read<ProductsBloc>().add(SearchProducts(value)),
            ),
          ),
          Expanded(
            child: BlocBuilder<ProductsBloc, ProductsState>(
              builder: (context, state) {
                if (state.status == APIStatus.loading) {
                  return ShimmerLoadingWidget(size: size);
                } else if (state.status == APIStatus.error) {
                  return const Center(child: Text(' Something is wrong'));
                } else if (state.status == APIStatus.success ||
                    state.status == APIStatus.loadingMore) {
                  final products = state.filteredProducts!.isEmpty
                      ? state.products
                      : state.filteredProducts;
                  return state.message == "Product not found"
                      ? Center(
                          child: Text(
                          state.message!,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ))
                      : state.products!.isEmpty
                          ? const NoDataWidget()
                          : Column(
                              children: [
                                Expanded(
                                  child: ProductsWidget(
                                    status: state.status!,
                                    products: products!,
                                  ),
                                ),
                                state.status == APIStatus.loadingMore
                                    ? const CupertinoActivityIndicator()
                                    : state.hasMaxReached! == true
                                        ? const Text("No more products")
                                        : const SizedBox(),
                                height(10),
                              ],
                            );
                } else {
                  return const SizedBox();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
