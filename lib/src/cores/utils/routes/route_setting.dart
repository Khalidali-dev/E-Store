import '../../../src.dart';

class RouteSetting {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.home:
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
        );
      case RouteName.checkOut:
        return MaterialPageRoute(
          builder: (context) => CheckOutWidget(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: SafeArea(
                child: Center(
              child: Text("Route Not Found"),
            )),
          ),
        );
    }
  }
}
