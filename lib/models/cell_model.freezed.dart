// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cell_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CellModel {

 int get index; bool get isMine; bool get isRevealed; bool get isFlagged; int get neighborMineCount;
/// Create a copy of CellModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CellModelCopyWith<CellModel> get copyWith => _$CellModelCopyWithImpl<CellModel>(this as CellModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CellModel&&(identical(other.index, index) || other.index == index)&&(identical(other.isMine, isMine) || other.isMine == isMine)&&(identical(other.isRevealed, isRevealed) || other.isRevealed == isRevealed)&&(identical(other.isFlagged, isFlagged) || other.isFlagged == isFlagged)&&(identical(other.neighborMineCount, neighborMineCount) || other.neighborMineCount == neighborMineCount));
}


@override
int get hashCode => Object.hash(runtimeType,index,isMine,isRevealed,isFlagged,neighborMineCount);

@override
String toString() {
  return 'CellModel(index: $index, isMine: $isMine, isRevealed: $isRevealed, isFlagged: $isFlagged, neighborMineCount: $neighborMineCount)';
}


}

/// @nodoc
abstract mixin class $CellModelCopyWith<$Res>  {
  factory $CellModelCopyWith(CellModel value, $Res Function(CellModel) _then) = _$CellModelCopyWithImpl;
@useResult
$Res call({
 int index, bool isMine, bool isRevealed, bool isFlagged, int neighborMineCount
});




}
/// @nodoc
class _$CellModelCopyWithImpl<$Res>
    implements $CellModelCopyWith<$Res> {
  _$CellModelCopyWithImpl(this._self, this._then);

  final CellModel _self;
  final $Res Function(CellModel) _then;

/// Create a copy of CellModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? index = null,Object? isMine = null,Object? isRevealed = null,Object? isFlagged = null,Object? neighborMineCount = null,}) {
  return _then(_self.copyWith(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,isMine: null == isMine ? _self.isMine : isMine // ignore: cast_nullable_to_non_nullable
as bool,isRevealed: null == isRevealed ? _self.isRevealed : isRevealed // ignore: cast_nullable_to_non_nullable
as bool,isFlagged: null == isFlagged ? _self.isFlagged : isFlagged // ignore: cast_nullable_to_non_nullable
as bool,neighborMineCount: null == neighborMineCount ? _self.neighborMineCount : neighborMineCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CellModel].
extension CellModelPatterns on CellModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CellModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CellModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CellModel value)  $default,){
final _that = this;
switch (_that) {
case _CellModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CellModel value)?  $default,){
final _that = this;
switch (_that) {
case _CellModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int index,  bool isMine,  bool isRevealed,  bool isFlagged,  int neighborMineCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CellModel() when $default != null:
return $default(_that.index,_that.isMine,_that.isRevealed,_that.isFlagged,_that.neighborMineCount);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int index,  bool isMine,  bool isRevealed,  bool isFlagged,  int neighborMineCount)  $default,) {final _that = this;
switch (_that) {
case _CellModel():
return $default(_that.index,_that.isMine,_that.isRevealed,_that.isFlagged,_that.neighborMineCount);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int index,  bool isMine,  bool isRevealed,  bool isFlagged,  int neighborMineCount)?  $default,) {final _that = this;
switch (_that) {
case _CellModel() when $default != null:
return $default(_that.index,_that.isMine,_that.isRevealed,_that.isFlagged,_that.neighborMineCount);case _:
  return null;

}
}

}

/// @nodoc


class _CellModel implements CellModel {
  const _CellModel({required this.index, this.isMine = false, this.isRevealed = false, this.isFlagged = false, this.neighborMineCount = 0});
  

@override final  int index;
@override@JsonKey() final  bool isMine;
@override@JsonKey() final  bool isRevealed;
@override@JsonKey() final  bool isFlagged;
@override@JsonKey() final  int neighborMineCount;

/// Create a copy of CellModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CellModelCopyWith<_CellModel> get copyWith => __$CellModelCopyWithImpl<_CellModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CellModel&&(identical(other.index, index) || other.index == index)&&(identical(other.isMine, isMine) || other.isMine == isMine)&&(identical(other.isRevealed, isRevealed) || other.isRevealed == isRevealed)&&(identical(other.isFlagged, isFlagged) || other.isFlagged == isFlagged)&&(identical(other.neighborMineCount, neighborMineCount) || other.neighborMineCount == neighborMineCount));
}


@override
int get hashCode => Object.hash(runtimeType,index,isMine,isRevealed,isFlagged,neighborMineCount);

@override
String toString() {
  return 'CellModel(index: $index, isMine: $isMine, isRevealed: $isRevealed, isFlagged: $isFlagged, neighborMineCount: $neighborMineCount)';
}


}

/// @nodoc
abstract mixin class _$CellModelCopyWith<$Res> implements $CellModelCopyWith<$Res> {
  factory _$CellModelCopyWith(_CellModel value, $Res Function(_CellModel) _then) = __$CellModelCopyWithImpl;
@override @useResult
$Res call({
 int index, bool isMine, bool isRevealed, bool isFlagged, int neighborMineCount
});




}
/// @nodoc
class __$CellModelCopyWithImpl<$Res>
    implements _$CellModelCopyWith<$Res> {
  __$CellModelCopyWithImpl(this._self, this._then);

  final _CellModel _self;
  final $Res Function(_CellModel) _then;

/// Create a copy of CellModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? index = null,Object? isMine = null,Object? isRevealed = null,Object? isFlagged = null,Object? neighborMineCount = null,}) {
  return _then(_CellModel(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,isMine: null == isMine ? _self.isMine : isMine // ignore: cast_nullable_to_non_nullable
as bool,isRevealed: null == isRevealed ? _self.isRevealed : isRevealed // ignore: cast_nullable_to_non_nullable
as bool,isFlagged: null == isFlagged ? _self.isFlagged : isFlagged // ignore: cast_nullable_to_non_nullable
as bool,neighborMineCount: null == neighborMineCount ? _self.neighborMineCount : neighborMineCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
