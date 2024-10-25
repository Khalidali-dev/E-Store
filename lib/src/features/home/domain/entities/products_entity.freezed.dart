// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductsEntity {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  /// Create a copy of ProductsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsEntityCopyWith<ProductsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsEntityCopyWith<$Res> {
  factory $ProductsEntityCopyWith(
          ProductsEntity value, $Res Function(ProductsEntity) then) =
      _$ProductsEntityCopyWithImpl<$Res, ProductsEntity>;
  @useResult
  $Res call(
      {int id, String title, String image, String description, double price});
}

/// @nodoc
class _$ProductsEntityCopyWithImpl<$Res, $Val extends ProductsEntity>
    implements $ProductsEntityCopyWith<$Res> {
  _$ProductsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = null,
    Object? description = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductsEntityImplCopyWith<$Res>
    implements $ProductsEntityCopyWith<$Res> {
  factory _$$ProductsEntityImplCopyWith(_$ProductsEntityImpl value,
          $Res Function(_$ProductsEntityImpl) then) =
      __$$ProductsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String title, String image, String description, double price});
}

/// @nodoc
class __$$ProductsEntityImplCopyWithImpl<$Res>
    extends _$ProductsEntityCopyWithImpl<$Res, _$ProductsEntityImpl>
    implements _$$ProductsEntityImplCopyWith<$Res> {
  __$$ProductsEntityImplCopyWithImpl(
      _$ProductsEntityImpl _value, $Res Function(_$ProductsEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = null,
    Object? description = null,
    Object? price = null,
  }) {
    return _then(_$ProductsEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$ProductsEntityImpl implements _ProductsEntity {
  _$ProductsEntityImpl(
      {this.id = 0,
      this.title = '',
      this.image = '',
      this.description = '',
      this.price = 0.00});

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String image;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final double price;

  @override
  String toString() {
    return 'ProductsEntity(id: $id, title: $title, image: $image, description: $description, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, image, description, price);

  /// Create a copy of ProductsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsEntityImplCopyWith<_$ProductsEntityImpl> get copyWith =>
      __$$ProductsEntityImplCopyWithImpl<_$ProductsEntityImpl>(
          this, _$identity);
}

abstract class _ProductsEntity implements ProductsEntity {
  factory _ProductsEntity(
      {final int id,
      final String title,
      final String image,
      final String description,
      final double price}) = _$ProductsEntityImpl;

  @override
  int get id;
  @override
  String get title;
  @override
  String get image;
  @override
  String get description;
  @override
  double get price;

  /// Create a copy of ProductsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsEntityImplCopyWith<_$ProductsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
