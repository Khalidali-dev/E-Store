import '../../../../src.dart';

part 'products_model.freezed.dart';
part 'products_model.g.dart';

@freezed
class ProductsModel with _$ProductsModel {
  factory ProductsModel({
    @Default('') String id,
    @Default('') String title,
    @Default('') String image,
    @Default('') String description,
    @Default(0.00) double price,
  }) = _ProductsModel;

  factory ProductsModel.fromJson(Map<String, dynamic> json) =>
      _$ProductsModelFromJson(json);
}

extension ProductsExtension on ProductsModel {
  ProductsEntity toEntity() => ProductsEntity(
      id: id,
      title: title,
      description: description,
      price: price,
      image: image);
}
