import '../../src.dart';

// DI
GetIt getIt = GetIt.instance;

// HEIGHTS
height(double height) => SizedBox(
      height: height,
    );

// WIDTH
width(double width) => SizedBox(
      width: width,
    );

// ROUTES
navigateAndRemoveUntils(
        {required String route, required BuildContext context}) =>
    Navigator.pushNamedAndRemoveUntil(context, route, (route) => false);

navigateName({required String route, required BuildContext context}) =>
    Navigator.pushNamed(context, route);

navigate({required Widget screen, required BuildContext context}) =>
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => screen,
        ));


// PADDINGS
const paddingAll = EdgeInsets.all(30);
const padding10 = EdgeInsets.all(10);
const padding20 = EdgeInsets.all(20);
