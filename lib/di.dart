import 'src/src.dart';

void configureDependencies() {
// PRODUCTS

  // Register HomeRemoteDataSource
  getIt.registerLazySingleton<HomeRemoteDataSource>(
      () => HomeRemoteDataSource());

  // Register ImagesRepositoryImpl
  getIt.registerLazySingleton<ProductsRepositoryImpl>(
    () => ProductsRepositoryImpl(
        remoteDataSource: getIt<HomeRemoteDataSource>(),
        productsStorage: LocalProductsStorage()),
  );

  // Register GetImagesUsecase
  getIt.registerLazySingleton<GetProductsUsecase>(
    () => GetProductsUsecase(getIt<ProductsRepositoryImpl>()),
  );

  // CART
  // Register CartRemoteDataSource
  getIt.registerLazySingleton<CartRemoteDataSource>(
      () => CartRemoteDataSource());

  // Register CartRepositoryImpl
  getIt.registerLazySingleton<CartRepositoryImpl>(
    () => CartRepositoryImpl(remoteDataSource: getIt<CartRemoteDataSource>()),
  );

  // Register GetCartUsecase
  getIt.registerLazySingleton<AddCartProductsUsecase>(
    () => AddCartProductsUsecase(getIt<CartRepositoryImpl>()),
  );
  getIt.registerLazySingleton<GetCartProductsUsecase>(
    () => GetCartProductsUsecase(getIt<CartRepositoryImpl>()),
  );
  getIt.registerLazySingleton<EditCartProductsUsecase>(
    () => EditCartProductsUsecase(getIt<CartRepositoryImpl>()),
  );
  getIt.registerLazySingleton<DeleteCartProductsUsecase>(
    () => DeleteCartProductsUsecase(getIt<CartRepositoryImpl>()),
  );
}
