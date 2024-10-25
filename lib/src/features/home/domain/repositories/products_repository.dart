import '../../../../src.dart';

abstract class ProductsRepository {
  Future<Either<Failure, List<ProductsModel>>> getProducts(
      {required int skip, required int limit});
}
