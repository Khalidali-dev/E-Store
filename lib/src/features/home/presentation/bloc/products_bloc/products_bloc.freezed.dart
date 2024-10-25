// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductsState {
  List<ProductsModel>? get products => throw _privateConstructorUsedError;
  List<ProductsModel>? get filteredProducts =>
      throw _privateConstructorUsedError;
  APIStatus? get status => throw _privateConstructorUsedError;
  bool? get hasMaxReached => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsStateCopyWith<ProductsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsStateCopyWith<$Res> {
  factory $ProductsStateCopyWith(
          ProductsState value, $Res Function(ProductsState) then) =
      _$ProductsStateCopyWithImpl<$Res, ProductsState>;
  @useResult
  $Res call(
      {List<ProductsModel>? products,
      List<ProductsModel>? filteredProducts,
      APIStatus? status,
      bool? hasMaxReached,
      String? message});
}

/// @nodoc
class _$ProductsStateCopyWithImpl<$Res, $Val extends ProductsState>
    implements $ProductsStateCopyWith<$Res> {
  _$ProductsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = freezed,
    Object? filteredProducts = freezed,
    Object? status = freezed,
    Object? hasMaxReached = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductsModel>?,
      filteredProducts: freezed == filteredProducts
          ? _value.filteredProducts
          : filteredProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductsModel>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as APIStatus?,
      hasMaxReached: freezed == hasMaxReached
          ? _value.hasMaxReached
          : hasMaxReached // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductsStateImplCopyWith<$Res>
    implements $ProductsStateCopyWith<$Res> {
  factory _$$ProductsStateImplCopyWith(
          _$ProductsStateImpl value, $Res Function(_$ProductsStateImpl) then) =
      __$$ProductsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ProductsModel>? products,
      List<ProductsModel>? filteredProducts,
      APIStatus? status,
      bool? hasMaxReached,
      String? message});
}

/// @nodoc
class __$$ProductsStateImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$ProductsStateImpl>
    implements _$$ProductsStateImplCopyWith<$Res> {
  __$$ProductsStateImplCopyWithImpl(
      _$ProductsStateImpl _value, $Res Function(_$ProductsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = freezed,
    Object? filteredProducts = freezed,
    Object? status = freezed,
    Object? hasMaxReached = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ProductsStateImpl(
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductsModel>?,
      filteredProducts: freezed == filteredProducts
          ? _value._filteredProducts
          : filteredProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductsModel>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as APIStatus?,
      hasMaxReached: freezed == hasMaxReached
          ? _value.hasMaxReached
          : hasMaxReached // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ProductsStateImpl implements _ProductsState {
  _$ProductsStateImpl(
      {final List<ProductsModel>? products,
      final List<ProductsModel>? filteredProducts,
      this.status,
      this.hasMaxReached,
      this.message})
      : _products = products,
        _filteredProducts = filteredProducts;

  final List<ProductsModel>? _products;
  @override
  List<ProductsModel>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ProductsModel>? _filteredProducts;
  @override
  List<ProductsModel>? get filteredProducts {
    final value = _filteredProducts;
    if (value == null) return null;
    if (_filteredProducts is EqualUnmodifiableListView)
      return _filteredProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final APIStatus? status;
  @override
  final bool? hasMaxReached;
  @override
  final String? message;

  @override
  String toString() {
    return 'ProductsState(products: $products, filteredProducts: $filteredProducts, status: $status, hasMaxReached: $hasMaxReached, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsStateImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other._filteredProducts, _filteredProducts) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.hasMaxReached, hasMaxReached) ||
                other.hasMaxReached == hasMaxReached) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_filteredProducts),
      status,
      hasMaxReached,
      message);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsStateImplCopyWith<_$ProductsStateImpl> get copyWith =>
      __$$ProductsStateImplCopyWithImpl<_$ProductsStateImpl>(this, _$identity);
}

abstract class _ProductsState implements ProductsState {
  factory _ProductsState(
      {final List<ProductsModel>? products,
      final List<ProductsModel>? filteredProducts,
      final APIStatus? status,
      final bool? hasMaxReached,
      final String? message}) = _$ProductsStateImpl;

  @override
  List<ProductsModel>? get products;
  @override
  List<ProductsModel>? get filteredProducts;
  @override
  APIStatus? get status;
  @override
  bool? get hasMaxReached;
  @override
  String? get message;

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsStateImplCopyWith<_$ProductsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllProducts,
    required TResult Function(String query) searchProducts,
    required TResult Function() loadMoreProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllProducts,
    TResult? Function(String query)? searchProducts,
    TResult? Function()? loadMoreProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllProducts,
    TResult Function(String query)? searchProducts,
    TResult Function()? loadMoreProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllProducts value) getAllProducts,
    required TResult Function(SearchProducts value) searchProducts,
    required TResult Function(LoadMoreProducts value) loadMoreProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllProducts value)? getAllProducts,
    TResult? Function(SearchProducts value)? searchProducts,
    TResult? Function(LoadMoreProducts value)? loadMoreProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllProducts value)? getAllProducts,
    TResult Function(SearchProducts value)? searchProducts,
    TResult Function(LoadMoreProducts value)? loadMoreProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsEventCopyWith<$Res> {
  factory $ProductsEventCopyWith(
          ProductsEvent value, $Res Function(ProductsEvent) then) =
      _$ProductsEventCopyWithImpl<$Res, ProductsEvent>;
}

/// @nodoc
class _$ProductsEventCopyWithImpl<$Res, $Val extends ProductsEvent>
    implements $ProductsEventCopyWith<$Res> {
  _$ProductsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetAllProductsImplCopyWith<$Res> {
  factory _$$GetAllProductsImplCopyWith(_$GetAllProductsImpl value,
          $Res Function(_$GetAllProductsImpl) then) =
      __$$GetAllProductsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllProductsImplCopyWithImpl<$Res>
    extends _$ProductsEventCopyWithImpl<$Res, _$GetAllProductsImpl>
    implements _$$GetAllProductsImplCopyWith<$Res> {
  __$$GetAllProductsImplCopyWithImpl(
      _$GetAllProductsImpl _value, $Res Function(_$GetAllProductsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetAllProductsImpl implements GetAllProducts {
  _$GetAllProductsImpl();

  @override
  String toString() {
    return 'ProductsEvent.getAllProducts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllProductsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllProducts,
    required TResult Function(String query) searchProducts,
    required TResult Function() loadMoreProducts,
  }) {
    return getAllProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllProducts,
    TResult? Function(String query)? searchProducts,
    TResult? Function()? loadMoreProducts,
  }) {
    return getAllProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllProducts,
    TResult Function(String query)? searchProducts,
    TResult Function()? loadMoreProducts,
    required TResult orElse(),
  }) {
    if (getAllProducts != null) {
      return getAllProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllProducts value) getAllProducts,
    required TResult Function(SearchProducts value) searchProducts,
    required TResult Function(LoadMoreProducts value) loadMoreProducts,
  }) {
    return getAllProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllProducts value)? getAllProducts,
    TResult? Function(SearchProducts value)? searchProducts,
    TResult? Function(LoadMoreProducts value)? loadMoreProducts,
  }) {
    return getAllProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllProducts value)? getAllProducts,
    TResult Function(SearchProducts value)? searchProducts,
    TResult Function(LoadMoreProducts value)? loadMoreProducts,
    required TResult orElse(),
  }) {
    if (getAllProducts != null) {
      return getAllProducts(this);
    }
    return orElse();
  }
}

abstract class GetAllProducts implements ProductsEvent {
  factory GetAllProducts() = _$GetAllProductsImpl;
}

/// @nodoc
abstract class _$$SearchProductsImplCopyWith<$Res> {
  factory _$$SearchProductsImplCopyWith(_$SearchProductsImpl value,
          $Res Function(_$SearchProductsImpl) then) =
      __$$SearchProductsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchProductsImplCopyWithImpl<$Res>
    extends _$ProductsEventCopyWithImpl<$Res, _$SearchProductsImpl>
    implements _$$SearchProductsImplCopyWith<$Res> {
  __$$SearchProductsImplCopyWithImpl(
      _$SearchProductsImpl _value, $Res Function(_$SearchProductsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchProductsImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchProductsImpl implements SearchProducts {
  _$SearchProductsImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'ProductsEvent.searchProducts(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchProductsImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of ProductsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchProductsImplCopyWith<_$SearchProductsImpl> get copyWith =>
      __$$SearchProductsImplCopyWithImpl<_$SearchProductsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllProducts,
    required TResult Function(String query) searchProducts,
    required TResult Function() loadMoreProducts,
  }) {
    return searchProducts(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllProducts,
    TResult? Function(String query)? searchProducts,
    TResult? Function()? loadMoreProducts,
  }) {
    return searchProducts?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllProducts,
    TResult Function(String query)? searchProducts,
    TResult Function()? loadMoreProducts,
    required TResult orElse(),
  }) {
    if (searchProducts != null) {
      return searchProducts(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllProducts value) getAllProducts,
    required TResult Function(SearchProducts value) searchProducts,
    required TResult Function(LoadMoreProducts value) loadMoreProducts,
  }) {
    return searchProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllProducts value)? getAllProducts,
    TResult? Function(SearchProducts value)? searchProducts,
    TResult? Function(LoadMoreProducts value)? loadMoreProducts,
  }) {
    return searchProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllProducts value)? getAllProducts,
    TResult Function(SearchProducts value)? searchProducts,
    TResult Function(LoadMoreProducts value)? loadMoreProducts,
    required TResult orElse(),
  }) {
    if (searchProducts != null) {
      return searchProducts(this);
    }
    return orElse();
  }
}

abstract class SearchProducts implements ProductsEvent {
  factory SearchProducts(final String query) = _$SearchProductsImpl;

  String get query;

  /// Create a copy of ProductsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchProductsImplCopyWith<_$SearchProductsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadMoreProductsImplCopyWith<$Res> {
  factory _$$LoadMoreProductsImplCopyWith(_$LoadMoreProductsImpl value,
          $Res Function(_$LoadMoreProductsImpl) then) =
      __$$LoadMoreProductsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMoreProductsImplCopyWithImpl<$Res>
    extends _$ProductsEventCopyWithImpl<$Res, _$LoadMoreProductsImpl>
    implements _$$LoadMoreProductsImplCopyWith<$Res> {
  __$$LoadMoreProductsImplCopyWithImpl(_$LoadMoreProductsImpl _value,
      $Res Function(_$LoadMoreProductsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadMoreProductsImpl implements LoadMoreProducts {
  _$LoadMoreProductsImpl();

  @override
  String toString() {
    return 'ProductsEvent.loadMoreProducts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadMoreProductsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllProducts,
    required TResult Function(String query) searchProducts,
    required TResult Function() loadMoreProducts,
  }) {
    return loadMoreProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllProducts,
    TResult? Function(String query)? searchProducts,
    TResult? Function()? loadMoreProducts,
  }) {
    return loadMoreProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllProducts,
    TResult Function(String query)? searchProducts,
    TResult Function()? loadMoreProducts,
    required TResult orElse(),
  }) {
    if (loadMoreProducts != null) {
      return loadMoreProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllProducts value) getAllProducts,
    required TResult Function(SearchProducts value) searchProducts,
    required TResult Function(LoadMoreProducts value) loadMoreProducts,
  }) {
    return loadMoreProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllProducts value)? getAllProducts,
    TResult? Function(SearchProducts value)? searchProducts,
    TResult? Function(LoadMoreProducts value)? loadMoreProducts,
  }) {
    return loadMoreProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllProducts value)? getAllProducts,
    TResult Function(SearchProducts value)? searchProducts,
    TResult Function(LoadMoreProducts value)? loadMoreProducts,
    required TResult orElse(),
  }) {
    if (loadMoreProducts != null) {
      return loadMoreProducts(this);
    }
    return orElse();
  }
}

abstract class LoadMoreProducts implements ProductsEvent {
  factory LoadMoreProducts() = _$LoadMoreProductsImpl;
}
