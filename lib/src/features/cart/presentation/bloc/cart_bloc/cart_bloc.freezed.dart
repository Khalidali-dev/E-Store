// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartState {
  List<CartModel>? get cartItems => throw _privateConstructorUsedError;
  APIStatus? get status => throw _privateConstructorUsedError;
  bool? get cartUpdated => throw _privateConstructorUsedError;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
  @useResult
  $Res call({List<CartModel>? cartItems, APIStatus? status, bool? cartUpdated});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItems = freezed,
    Object? status = freezed,
    Object? cartUpdated = freezed,
  }) {
    return _then(_value.copyWith(
      cartItems: freezed == cartItems
          ? _value.cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<CartModel>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as APIStatus?,
      cartUpdated: freezed == cartUpdated
          ? _value.cartUpdated
          : cartUpdated // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartStateImplCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory _$$CartStateImplCopyWith(
          _$CartStateImpl value, $Res Function(_$CartStateImpl) then) =
      __$$CartStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CartModel>? cartItems, APIStatus? status, bool? cartUpdated});
}

/// @nodoc
class __$$CartStateImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartStateImpl>
    implements _$$CartStateImplCopyWith<$Res> {
  __$$CartStateImplCopyWithImpl(
      _$CartStateImpl _value, $Res Function(_$CartStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItems = freezed,
    Object? status = freezed,
    Object? cartUpdated = freezed,
  }) {
    return _then(_$CartStateImpl(
      cartItems: freezed == cartItems
          ? _value._cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<CartModel>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as APIStatus?,
      cartUpdated: freezed == cartUpdated
          ? _value.cartUpdated
          : cartUpdated // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$CartStateImpl implements _CartState {
  _$CartStateImpl(
      {final List<CartModel>? cartItems, this.status, this.cartUpdated})
      : _cartItems = cartItems;

  final List<CartModel>? _cartItems;
  @override
  List<CartModel>? get cartItems {
    final value = _cartItems;
    if (value == null) return null;
    if (_cartItems is EqualUnmodifiableListView) return _cartItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final APIStatus? status;
  @override
  final bool? cartUpdated;

  @override
  String toString() {
    return 'CartState(cartItems: $cartItems, status: $status, cartUpdated: $cartUpdated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartStateImpl &&
            const DeepCollectionEquality()
                .equals(other._cartItems, _cartItems) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.cartUpdated, cartUpdated) ||
                other.cartUpdated == cartUpdated));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_cartItems), status, cartUpdated);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartStateImplCopyWith<_$CartStateImpl> get copyWith =>
      __$$CartStateImplCopyWithImpl<_$CartStateImpl>(this, _$identity);
}

abstract class _CartState implements CartState {
  factory _CartState(
      {final List<CartModel>? cartItems,
      final APIStatus? status,
      final bool? cartUpdated}) = _$CartStateImpl;

  @override
  List<CartModel>? get cartItems;
  @override
  APIStatus? get status;
  @override
  bool? get cartUpdated;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartStateImplCopyWith<_$CartStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCartItems,
    required TResult Function(Map<String, dynamic> json) addToCart,
    required TResult Function(int quantity, String id) editCartItems,
    required TResult Function(String id) deleteCartItems,
    required TResult Function() cartUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCartItems,
    TResult? Function(Map<String, dynamic> json)? addToCart,
    TResult? Function(int quantity, String id)? editCartItems,
    TResult? Function(String id)? deleteCartItems,
    TResult? Function()? cartUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCartItems,
    TResult Function(Map<String, dynamic> json)? addToCart,
    TResult Function(int quantity, String id)? editCartItems,
    TResult Function(String id)? deleteCartItems,
    TResult Function()? cartUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCartItems value) getAllCartItems,
    required TResult Function(AddToCartItems value) addToCart,
    required TResult Function(EditCartItems value) editCartItems,
    required TResult Function(DeleteCartItems value) deleteCartItems,
    required TResult Function(CartUpdated value) cartUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCartItems value)? getAllCartItems,
    TResult? Function(AddToCartItems value)? addToCart,
    TResult? Function(EditCartItems value)? editCartItems,
    TResult? Function(DeleteCartItems value)? deleteCartItems,
    TResult? Function(CartUpdated value)? cartUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCartItems value)? getAllCartItems,
    TResult Function(AddToCartItems value)? addToCart,
    TResult Function(EditCartItems value)? editCartItems,
    TResult Function(DeleteCartItems value)? deleteCartItems,
    TResult Function(CartUpdated value)? cartUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetAllCartItemsImplCopyWith<$Res> {
  factory _$$GetAllCartItemsImplCopyWith(_$GetAllCartItemsImpl value,
          $Res Function(_$GetAllCartItemsImpl) then) =
      __$$GetAllCartItemsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllCartItemsImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$GetAllCartItemsImpl>
    implements _$$GetAllCartItemsImplCopyWith<$Res> {
  __$$GetAllCartItemsImplCopyWithImpl(
      _$GetAllCartItemsImpl _value, $Res Function(_$GetAllCartItemsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetAllCartItemsImpl implements GetAllCartItems {
  _$GetAllCartItemsImpl();

  @override
  String toString() {
    return 'CartEvent.getAllCartItems()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllCartItemsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCartItems,
    required TResult Function(Map<String, dynamic> json) addToCart,
    required TResult Function(int quantity, String id) editCartItems,
    required TResult Function(String id) deleteCartItems,
    required TResult Function() cartUpdated,
  }) {
    return getAllCartItems();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCartItems,
    TResult? Function(Map<String, dynamic> json)? addToCart,
    TResult? Function(int quantity, String id)? editCartItems,
    TResult? Function(String id)? deleteCartItems,
    TResult? Function()? cartUpdated,
  }) {
    return getAllCartItems?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCartItems,
    TResult Function(Map<String, dynamic> json)? addToCart,
    TResult Function(int quantity, String id)? editCartItems,
    TResult Function(String id)? deleteCartItems,
    TResult Function()? cartUpdated,
    required TResult orElse(),
  }) {
    if (getAllCartItems != null) {
      return getAllCartItems();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCartItems value) getAllCartItems,
    required TResult Function(AddToCartItems value) addToCart,
    required TResult Function(EditCartItems value) editCartItems,
    required TResult Function(DeleteCartItems value) deleteCartItems,
    required TResult Function(CartUpdated value) cartUpdated,
  }) {
    return getAllCartItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCartItems value)? getAllCartItems,
    TResult? Function(AddToCartItems value)? addToCart,
    TResult? Function(EditCartItems value)? editCartItems,
    TResult? Function(DeleteCartItems value)? deleteCartItems,
    TResult? Function(CartUpdated value)? cartUpdated,
  }) {
    return getAllCartItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCartItems value)? getAllCartItems,
    TResult Function(AddToCartItems value)? addToCart,
    TResult Function(EditCartItems value)? editCartItems,
    TResult Function(DeleteCartItems value)? deleteCartItems,
    TResult Function(CartUpdated value)? cartUpdated,
    required TResult orElse(),
  }) {
    if (getAllCartItems != null) {
      return getAllCartItems(this);
    }
    return orElse();
  }
}

abstract class GetAllCartItems implements CartEvent {
  factory GetAllCartItems() = _$GetAllCartItemsImpl;
}

/// @nodoc
abstract class _$$AddToCartItemsImplCopyWith<$Res> {
  factory _$$AddToCartItemsImplCopyWith(_$AddToCartItemsImpl value,
          $Res Function(_$AddToCartItemsImpl) then) =
      __$$AddToCartItemsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> json});
}

/// @nodoc
class __$$AddToCartItemsImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$AddToCartItemsImpl>
    implements _$$AddToCartItemsImplCopyWith<$Res> {
  __$$AddToCartItemsImplCopyWithImpl(
      _$AddToCartItemsImpl _value, $Res Function(_$AddToCartItemsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? json = null,
  }) {
    return _then(_$AddToCartItemsImpl(
      null == json
          ? _value._json
          : json // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$AddToCartItemsImpl implements AddToCartItems {
  _$AddToCartItemsImpl(final Map<String, dynamic> json) : _json = json;

  final Map<String, dynamic> _json;
  @override
  Map<String, dynamic> get json {
    if (_json is EqualUnmodifiableMapView) return _json;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_json);
  }

  @override
  String toString() {
    return 'CartEvent.addToCart(json: $json)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToCartItemsImpl &&
            const DeepCollectionEquality().equals(other._json, _json));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_json));

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToCartItemsImplCopyWith<_$AddToCartItemsImpl> get copyWith =>
      __$$AddToCartItemsImplCopyWithImpl<_$AddToCartItemsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCartItems,
    required TResult Function(Map<String, dynamic> json) addToCart,
    required TResult Function(int quantity, String id) editCartItems,
    required TResult Function(String id) deleteCartItems,
    required TResult Function() cartUpdated,
  }) {
    return addToCart(json);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCartItems,
    TResult? Function(Map<String, dynamic> json)? addToCart,
    TResult? Function(int quantity, String id)? editCartItems,
    TResult? Function(String id)? deleteCartItems,
    TResult? Function()? cartUpdated,
  }) {
    return addToCart?.call(json);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCartItems,
    TResult Function(Map<String, dynamic> json)? addToCart,
    TResult Function(int quantity, String id)? editCartItems,
    TResult Function(String id)? deleteCartItems,
    TResult Function()? cartUpdated,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(json);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCartItems value) getAllCartItems,
    required TResult Function(AddToCartItems value) addToCart,
    required TResult Function(EditCartItems value) editCartItems,
    required TResult Function(DeleteCartItems value) deleteCartItems,
    required TResult Function(CartUpdated value) cartUpdated,
  }) {
    return addToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCartItems value)? getAllCartItems,
    TResult? Function(AddToCartItems value)? addToCart,
    TResult? Function(EditCartItems value)? editCartItems,
    TResult? Function(DeleteCartItems value)? deleteCartItems,
    TResult? Function(CartUpdated value)? cartUpdated,
  }) {
    return addToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCartItems value)? getAllCartItems,
    TResult Function(AddToCartItems value)? addToCart,
    TResult Function(EditCartItems value)? editCartItems,
    TResult Function(DeleteCartItems value)? deleteCartItems,
    TResult Function(CartUpdated value)? cartUpdated,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(this);
    }
    return orElse();
  }
}

abstract class AddToCartItems implements CartEvent {
  factory AddToCartItems(final Map<String, dynamic> json) =
      _$AddToCartItemsImpl;

  Map<String, dynamic> get json;

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddToCartItemsImplCopyWith<_$AddToCartItemsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditCartItemsImplCopyWith<$Res> {
  factory _$$EditCartItemsImplCopyWith(
          _$EditCartItemsImpl value, $Res Function(_$EditCartItemsImpl) then) =
      __$$EditCartItemsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int quantity, String id});
}

/// @nodoc
class __$$EditCartItemsImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$EditCartItemsImpl>
    implements _$$EditCartItemsImplCopyWith<$Res> {
  __$$EditCartItemsImplCopyWithImpl(
      _$EditCartItemsImpl _value, $Res Function(_$EditCartItemsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = null,
    Object? id = null,
  }) {
    return _then(_$EditCartItemsImpl(
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditCartItemsImpl implements EditCartItems {
  _$EditCartItemsImpl({required this.quantity, required this.id});

  @override
  final int quantity;
  @override
  final String id;

  @override
  String toString() {
    return 'CartEvent.editCartItems(quantity: $quantity, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditCartItemsImpl &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quantity, id);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditCartItemsImplCopyWith<_$EditCartItemsImpl> get copyWith =>
      __$$EditCartItemsImplCopyWithImpl<_$EditCartItemsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCartItems,
    required TResult Function(Map<String, dynamic> json) addToCart,
    required TResult Function(int quantity, String id) editCartItems,
    required TResult Function(String id) deleteCartItems,
    required TResult Function() cartUpdated,
  }) {
    return editCartItems(quantity, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCartItems,
    TResult? Function(Map<String, dynamic> json)? addToCart,
    TResult? Function(int quantity, String id)? editCartItems,
    TResult? Function(String id)? deleteCartItems,
    TResult? Function()? cartUpdated,
  }) {
    return editCartItems?.call(quantity, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCartItems,
    TResult Function(Map<String, dynamic> json)? addToCart,
    TResult Function(int quantity, String id)? editCartItems,
    TResult Function(String id)? deleteCartItems,
    TResult Function()? cartUpdated,
    required TResult orElse(),
  }) {
    if (editCartItems != null) {
      return editCartItems(quantity, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCartItems value) getAllCartItems,
    required TResult Function(AddToCartItems value) addToCart,
    required TResult Function(EditCartItems value) editCartItems,
    required TResult Function(DeleteCartItems value) deleteCartItems,
    required TResult Function(CartUpdated value) cartUpdated,
  }) {
    return editCartItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCartItems value)? getAllCartItems,
    TResult? Function(AddToCartItems value)? addToCart,
    TResult? Function(EditCartItems value)? editCartItems,
    TResult? Function(DeleteCartItems value)? deleteCartItems,
    TResult? Function(CartUpdated value)? cartUpdated,
  }) {
    return editCartItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCartItems value)? getAllCartItems,
    TResult Function(AddToCartItems value)? addToCart,
    TResult Function(EditCartItems value)? editCartItems,
    TResult Function(DeleteCartItems value)? deleteCartItems,
    TResult Function(CartUpdated value)? cartUpdated,
    required TResult orElse(),
  }) {
    if (editCartItems != null) {
      return editCartItems(this);
    }
    return orElse();
  }
}

abstract class EditCartItems implements CartEvent {
  factory EditCartItems(
      {required final int quantity,
      required final String id}) = _$EditCartItemsImpl;

  int get quantity;
  String get id;

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditCartItemsImplCopyWith<_$EditCartItemsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteCartItemsImplCopyWith<$Res> {
  factory _$$DeleteCartItemsImplCopyWith(_$DeleteCartItemsImpl value,
          $Res Function(_$DeleteCartItemsImpl) then) =
      __$$DeleteCartItemsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteCartItemsImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$DeleteCartItemsImpl>
    implements _$$DeleteCartItemsImplCopyWith<$Res> {
  __$$DeleteCartItemsImplCopyWithImpl(
      _$DeleteCartItemsImpl _value, $Res Function(_$DeleteCartItemsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteCartItemsImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteCartItemsImpl implements DeleteCartItems {
  _$DeleteCartItemsImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'CartEvent.deleteCartItems(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCartItemsImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCartItemsImplCopyWith<_$DeleteCartItemsImpl> get copyWith =>
      __$$DeleteCartItemsImplCopyWithImpl<_$DeleteCartItemsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCartItems,
    required TResult Function(Map<String, dynamic> json) addToCart,
    required TResult Function(int quantity, String id) editCartItems,
    required TResult Function(String id) deleteCartItems,
    required TResult Function() cartUpdated,
  }) {
    return deleteCartItems(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCartItems,
    TResult? Function(Map<String, dynamic> json)? addToCart,
    TResult? Function(int quantity, String id)? editCartItems,
    TResult? Function(String id)? deleteCartItems,
    TResult? Function()? cartUpdated,
  }) {
    return deleteCartItems?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCartItems,
    TResult Function(Map<String, dynamic> json)? addToCart,
    TResult Function(int quantity, String id)? editCartItems,
    TResult Function(String id)? deleteCartItems,
    TResult Function()? cartUpdated,
    required TResult orElse(),
  }) {
    if (deleteCartItems != null) {
      return deleteCartItems(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCartItems value) getAllCartItems,
    required TResult Function(AddToCartItems value) addToCart,
    required TResult Function(EditCartItems value) editCartItems,
    required TResult Function(DeleteCartItems value) deleteCartItems,
    required TResult Function(CartUpdated value) cartUpdated,
  }) {
    return deleteCartItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCartItems value)? getAllCartItems,
    TResult? Function(AddToCartItems value)? addToCart,
    TResult? Function(EditCartItems value)? editCartItems,
    TResult? Function(DeleteCartItems value)? deleteCartItems,
    TResult? Function(CartUpdated value)? cartUpdated,
  }) {
    return deleteCartItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCartItems value)? getAllCartItems,
    TResult Function(AddToCartItems value)? addToCart,
    TResult Function(EditCartItems value)? editCartItems,
    TResult Function(DeleteCartItems value)? deleteCartItems,
    TResult Function(CartUpdated value)? cartUpdated,
    required TResult orElse(),
  }) {
    if (deleteCartItems != null) {
      return deleteCartItems(this);
    }
    return orElse();
  }
}

abstract class DeleteCartItems implements CartEvent {
  factory DeleteCartItems(final String id) = _$DeleteCartItemsImpl;

  String get id;

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteCartItemsImplCopyWith<_$DeleteCartItemsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartUpdatedImplCopyWith<$Res> {
  factory _$$CartUpdatedImplCopyWith(
          _$CartUpdatedImpl value, $Res Function(_$CartUpdatedImpl) then) =
      __$$CartUpdatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CartUpdatedImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$CartUpdatedImpl>
    implements _$$CartUpdatedImplCopyWith<$Res> {
  __$$CartUpdatedImplCopyWithImpl(
      _$CartUpdatedImpl _value, $Res Function(_$CartUpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CartUpdatedImpl implements CartUpdated {
  _$CartUpdatedImpl();

  @override
  String toString() {
    return 'CartEvent.cartUpdated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CartUpdatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCartItems,
    required TResult Function(Map<String, dynamic> json) addToCart,
    required TResult Function(int quantity, String id) editCartItems,
    required TResult Function(String id) deleteCartItems,
    required TResult Function() cartUpdated,
  }) {
    return cartUpdated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCartItems,
    TResult? Function(Map<String, dynamic> json)? addToCart,
    TResult? Function(int quantity, String id)? editCartItems,
    TResult? Function(String id)? deleteCartItems,
    TResult? Function()? cartUpdated,
  }) {
    return cartUpdated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCartItems,
    TResult Function(Map<String, dynamic> json)? addToCart,
    TResult Function(int quantity, String id)? editCartItems,
    TResult Function(String id)? deleteCartItems,
    TResult Function()? cartUpdated,
    required TResult orElse(),
  }) {
    if (cartUpdated != null) {
      return cartUpdated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCartItems value) getAllCartItems,
    required TResult Function(AddToCartItems value) addToCart,
    required TResult Function(EditCartItems value) editCartItems,
    required TResult Function(DeleteCartItems value) deleteCartItems,
    required TResult Function(CartUpdated value) cartUpdated,
  }) {
    return cartUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCartItems value)? getAllCartItems,
    TResult? Function(AddToCartItems value)? addToCart,
    TResult? Function(EditCartItems value)? editCartItems,
    TResult? Function(DeleteCartItems value)? deleteCartItems,
    TResult? Function(CartUpdated value)? cartUpdated,
  }) {
    return cartUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCartItems value)? getAllCartItems,
    TResult Function(AddToCartItems value)? addToCart,
    TResult Function(EditCartItems value)? editCartItems,
    TResult Function(DeleteCartItems value)? deleteCartItems,
    TResult Function(CartUpdated value)? cartUpdated,
    required TResult orElse(),
  }) {
    if (cartUpdated != null) {
      return cartUpdated(this);
    }
    return orElse();
  }
}

abstract class CartUpdated implements CartEvent {
  factory CartUpdated() = _$CartUpdatedImpl;
}
