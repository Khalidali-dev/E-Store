import '../../../../src.dart';

part 'cart_model.freezed.dart';
part 'cart_model.g.dart';

@freezed
class CartModel with _$CartModel {
  factory CartModel({
    @Default('') String id,
    @Default('') String title,
    @Default('') String image,
    @Default(1) int quantity,
    @Default(0.00) double price,
  }) = _CartModel;

  factory CartModel.fromJson(Map<String, dynamic> json) =>
      _$CartModelFromJson(json);
}

extension CartExtension on CartModel {
  CartEntity toEntity() => CartEntity(
      id: id, title: title, quantity: quantity, price: price, image: image);
}
