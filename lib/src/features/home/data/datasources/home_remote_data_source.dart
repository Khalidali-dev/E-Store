import '../../../../src.dart';

class HomeRemoteDataSource {
  HomeRemoteDataSource();

  HttpApiServices services = HttpApiServices();

  Future<ProductsModel> getImages() async {
    final response = await services.getAPI(ApiUrls.getAllProductsURL);
    if (response.statusCode == 200) {
      return ProductsModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load images');
    }
  }
}
