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

toast(BuildContext context, String message) => toastification.show(
    style: ToastificationStyle.fillColored,
    primaryColor: Colors.purple,
    context: context,
    title: Text(message),
    autoCloseDuration: const Duration(seconds: 2));

// PADDINGS
const paddingAll = EdgeInsets.all(30);
const padding10 = EdgeInsets.all(10);
const padding20 = EdgeInsets.all(20);
