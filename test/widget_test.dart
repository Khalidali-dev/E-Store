import 'package:estore/src/features/cart/cart.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MockCartBloc extends MockBloc<CartEvent, CartState> implements CartBloc {}

void main() {
  late MockCartBloc mockCartBloc;

  setUp(() {
    mockCartBloc = MockCartBloc();
  });

  testWidgets('removes an item from CartPage when delete button is pressed',
      (WidgetTester tester) async {
    final cartItems = [
      CartModel(id: '1', title: 'Product 1', price: 10.0, quantity: 1),
      CartModel(id: '2', title: 'Product 2', price: 20.0, quantity: 2),
    ];

    whenListen(
      mockCartBloc,
      Stream.fromIterable([CartState(cartItems: cartItems)]),
      initialState: CartState.initial(),
    );

    await tester.pumpWidget(
      MaterialApp(
        home: BlocProvider<CartBloc>(
          create: (_) => mockCartBloc,
          child: const CartPage(),
        ),
      ),
    );

    await tester.pumpAndSettle();

    // Simulate a delete action
    await tester.tap(find.byIcon(Icons.delete).first);
    await tester.pumpAndSettle();

    // Update the state to reflect the cart with the item removed
    whenListen(
      mockCartBloc,
      Stream.fromIterable([
        CartState(cartItems: [cartItems[1]])
      ]), // Only Product 2 remains
    );

    // Verify the item was removed from the UI
    expect(find.text('Product 1'), findsNothing);
    expect(find.text('Product 2'), findsOneWidget);
  });
}
