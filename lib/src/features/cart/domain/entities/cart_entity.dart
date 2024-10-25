import '../../../../src.dart';
part 'cart_entity.freezed.dart';

@freezed
class CartEntity with _$CartEntity {
  factory CartEntity({
    @Default('') String id,
    @Default('') String title,
    @Default('') String image,
    @Default(1) int quantity,
    @Default(0.00) double price,
  }) = _CartEntity;
}
