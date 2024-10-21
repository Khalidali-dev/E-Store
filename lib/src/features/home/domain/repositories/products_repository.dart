import '../../../../src.dart';

abstract class ProductsRepository {
  Future<Either<Failure, ProductsModel>> getProducts();
}
