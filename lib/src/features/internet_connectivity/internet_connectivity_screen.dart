import '../../src.dart';

class InternetConnectivityScreen extends StatelessWidget {
  const InternetConnectivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<ProductsBloc>().add(InternetManager());
    return BlocBuilder<ProductsBloc, ProductsState>(
      builder: (context, state) {
        if (state.isConnected == null) {
          return const LoadingWidget();
        }
        return state.isConnected!
            ? const HomePage()
            : const NoInternetConnectionWidget();
      },
    );
  }
}

class NoInternetConnectionWidget extends StatelessWidget {
  const NoInternetConnectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              Images.noInternet,
              width: 300,
              height: 300,
            ),
            height(20),
            const Text(
              'No internet connection.\nPlease check your network settings.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
