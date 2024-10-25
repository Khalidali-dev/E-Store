import '../../../../src.dart';

class HomeRemoteDataSource {
  HomeRemoteDataSource();

  HttpApiServices services = HttpApiServices();

  Future<List<ProductsModel>> getProducts() async {
    final response = await services.getAPI(ApiUrls.getAllProductsURL);

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body) as List<dynamic>;

      return data.map((item) => ProductsModel.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }
}
