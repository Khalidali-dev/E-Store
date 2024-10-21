import '../../../../src.dart';

class GetProductsUsecase {
  final ProductsRepository productsRepository;
  GetProductsUsecase(this.productsRepository);

  Future<Either<Failure, ProductsModel>> call() =>
      productsRepository.getProducts();
}
