import '../../../src.dart';

class RouteSetting {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.internetConnection:
        return MaterialPageRoute(
          builder: (context) => const InternetConnectivityScreen(),
        );
      case RouteName.home:
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
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
