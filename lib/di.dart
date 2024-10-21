import 'src/src.dart';

void configureDependencies() {
  // Register HomeRemoteDataSource
  getIt.registerLazySingleton<HomeRemoteDataSource>(
      () => HomeRemoteDataSource());

  // Register ImagesRepositoryImpl
  getIt.registerLazySingleton<ProductsRepositoryImpl>(
    () =>
        ProductsRepositoryImpl(remoteDataSource: getIt<HomeRemoteDataSource>()),
  );

  // Register GetImagesUsecase
  getIt.registerLazySingleton<GetProductsUsecase>(
    () => GetProductsUsecase(getIt<ProductsRepositoryImpl>()),
  );
}
