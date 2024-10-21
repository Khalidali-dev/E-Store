import 'src/src.dart';

void main() {
  configureDependencies();
  runApp(BlocProvider(
      create: (context) =>
          ProductsBloc(getIt<GetProductsUsecase>())..add(GetAllImages()),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pixabay',
      themeMode: ThemeMode.system,
      initialRoute: RouteName.internetConnection,
      onGenerateRoute: RouteSetting.generateRoute,
    );
  }
}
