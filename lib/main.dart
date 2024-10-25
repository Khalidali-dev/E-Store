
import 'src/src.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  configureDependencies();
  runApp(MultiBlocProvider(providers: [
    BlocProvider(
        create: (context) =>
            ProductsBloc(getIt<GetProductsUsecase>())..add(GetAllProducts())),
    BlocProvider(
      create: (context) => CartBloc(
          addToCartUsecase: getIt<AddCartProductsUsecase>(),
          deleteCartUsecase: getIt<DeleteCartProductsUsecase>(),
          getCartItemsUsecase: getIt<GetCartProductsUsecase>(),
          editCartUsecase: getIt<EditCartProductsUsecase>()),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E Store',
      themeMode: ThemeMode.system,
      initialRoute: RouteName.home,
      onGenerateRoute: RouteSetting.generateRoute,
    );
  }
}
