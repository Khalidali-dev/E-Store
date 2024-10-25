import '../../../../src.dart';

part 'products_entity.freezed.dart';

@freezed
class ProductsEntity with _$ProductsEntity {
  factory ProductsEntity({
    @Default(0) int id,
    @Default('') String title,
    @Default('') String image,
    @Default('') String description,
    @Default(0.00) double price,
  }) = _ProductsEntity;
}
