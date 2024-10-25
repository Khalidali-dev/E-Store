import 'package:estore/main.dart';
import 'package:estore/src/src.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Adding product to cart and checkout',
      (WidgetTester tester) async {
    // Start the app
    await tester.pumpWidget(const MyApp());

    // Navigate to product page and tap the add button
    await tester.tap(find.byKey(const Key('add_to_cart_button')));
    await tester.pumpAndSettle();

    // Go to the cart page
    await tester.tap(find.byKey(const Key('cart_icon')));
    await tester.pumpAndSettle();

    // Verify product is added to cart
    expect(find.text('Test Product'), findsOneWidget);

    // Proceed to checkout
    await tester.tap(find.byKey(const Key('checkout_button')));
    await tester.pumpAndSettle();

    // Verify the checkout success message
    expect(find.text('Checkout Successful'), findsOneWidget);
  });
}
