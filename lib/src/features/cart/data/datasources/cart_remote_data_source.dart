import 'dart:developer';

import '../../../../src.dart';

class CartRemoteDataSource {
  CartRemoteDataSource();

  HttpApiServices services = HttpApiServices();
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<void> addToCart(Map<String, dynamic> json) async {
    try {
      await firestore.collection("cart").add(json);
    } catch (e) {
      log("Failed to add Item to cart ${e.toString()}");
    }
  }

  Future<void> editCartProducts(
      {required int quantity, required String id}) async {
    try {
      await firestore.collection("cart").doc(id).update({"quantity": quantity});
    } catch (e) {
      log("Failed to update Item of cart ${e.toString()}");
    }
  }

  Future<void> deleteCartProducts(String id) async {
    try {
      await firestore.collection("cart").doc(id).delete();
    } catch (e) {
      log("Failed to delete Item of cart ${e.toString()}");
    }
  }

  Future<List<CartModel>> getCartProducts() async {
    try {
      // Fetch the documents from the Firestore "cart" collection
      final response = await firestore.collection("cart").get();

      // Check if the documents are not empty
      if (response.docs.isNotEmpty) {
        // Map each Firestore document to a CartModel instance
        final List<CartModel> cartItems = response.docs
            .map((doc) => CartModel.fromJson(doc.data()).copyWith(id: doc.id))
            .toList();
        return cartItems;
      } else {
        throw Exception('No cart products found');
      }
    } catch (e) {
      log('Error fetching cart products: $e');
      throw Exception('Failed to load cart products');
    }
  }
}
