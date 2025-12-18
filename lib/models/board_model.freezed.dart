// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'board_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BoardModel {

 List<CellModel> get cells; int get rows; int get cols; int get totalMines; bool get isGameOver; bool get isWin;
/// Create a copy of BoardModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BoardModelCopyWith<BoardModel> get copyWith => _$BoardModelCopyWithImpl<BoardModel>(this as BoardModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BoardModel&&const DeepCollectionEquality().equals(other.cells, cells)&&(identical(other.rows, rows) || other.rows == rows)&&(identical(other.cols, cols) || other.cols == cols)&&(identical(other.totalMines, totalMines) || other.totalMines == totalMines)&&(identical(other.isGameOver, isGameOver) || other.isGameOver == isGameOver)&&(identical(other.isWin, isWin) || other.isWin == isWin));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(cells),rows,cols,totalMines,isGameOver,isWin);

@override
String toString() {
  return 'BoardModel(cells: $cells, rows: $rows, cols: $cols, totalMines: $totalMines, isGameOver: $isGameOver, isWin: $isWin)';
}


}

/// @nodoc
abstract mixin class $BoardModelCopyWith<$Res>  {
  factory $BoardModelCopyWith(BoardModel value, $Res Function(BoardModel) _then) = _$BoardModelCopyWithImpl;
@useResult
$Res call({
 List<CellModel> cells, int rows, int cols, int totalMines, bool isGameOver, bool isWin
});




}
/// @nodoc
class _$BoardModelCopyWithImpl<$Res>
    implements $BoardModelCopyWith<$Res> {
  _$BoardModelCopyWithImpl(this._self, this._then);

  final BoardModel _self;
  final $Res Function(BoardModel) _then;

/// Create a copy of BoardModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cells = null,Object? rows = null,Object? cols = null,Object? totalMines = null,Object? isGameOver = null,Object? isWin = null,}) {
  return _then(_self.copyWith(
cells: null == cells ? _self.cells : cells // ignore: cast_nullable_to_non_nullable
as List<CellModel>,rows: null == rows ? _self.rows : rows // ignore: cast_nullable_to_non_nullable
as int,cols: null == cols ? _self.cols : cols // ignore: cast_nullable_to_non_nullable
as int,totalMines: null == totalMines ? _self.totalMines : totalMines // ignore: cast_nullable_to_non_nullable
as int,isGameOver: null == isGameOver ? _self.isGameOver : isGameOver // ignore: cast_nullable_to_non_nullable
as bool,isWin: null == isWin ? _self.isWin : isWin // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [BoardModel].
extension BoardModelPatterns on BoardModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BoardModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BoardModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BoardModel value)  $default,){
final _that = this;
switch (_that) {
case _BoardModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BoardModel value)?  $default,){
final _that = this;
switch (_that) {
case _BoardModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CellModel> cells,  int rows,  int cols,  int totalMines,  bool isGameOver,  bool isWin)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BoardModel() when $default != null:
return $default(_that.cells,_that.rows,_that.cols,_that.totalMines,_that.isGameOver,_that.isWin);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CellModel> cells,  int rows,  int cols,  int totalMines,  bool isGameOver,  bool isWin)  $default,) {final _that = this;
switch (_that) {
case _BoardModel():
return $default(_that.cells,_that.rows,_that.cols,_that.totalMines,_that.isGameOver,_that.isWin);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CellModel> cells,  int rows,  int cols,  int totalMines,  bool isGameOver,  bool isWin)?  $default,) {final _that = this;
switch (_that) {
case _BoardModel() when $default != null:
return $default(_that.cells,_that.rows,_that.cols,_that.totalMines,_that.isGameOver,_that.isWin);case _:
  return null;

}
}

}

/// @nodoc


class _BoardModel extends BoardModel {
  const _BoardModel({required final  List<CellModel> cells, required this.rows, required this.cols, required this.totalMines, this.isGameOver = false, this.isWin = false}): _cells = cells,super._();
  

 final  List<CellModel> _cells;
@override List<CellModel> get cells {
  if (_cells is EqualUnmodifiableListView) return _cells;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cells);
}

@override final  int rows;
@override final  int cols;
@override final  int totalMines;
@override@JsonKey() final  bool isGameOver;
@override@JsonKey() final  bool isWin;

/// Create a copy of BoardModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BoardModelCopyWith<_BoardModel> get copyWith => __$BoardModelCopyWithImpl<_BoardModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BoardModel&&const DeepCollectionEquality().equals(other._cells, _cells)&&(identical(other.rows, rows) || other.rows == rows)&&(identical(other.cols, cols) || other.cols == cols)&&(identical(other.totalMines, totalMines) || other.totalMines == totalMines)&&(identical(other.isGameOver, isGameOver) || other.isGameOver == isGameOver)&&(identical(other.isWin, isWin) || other.isWin == isWin));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_cells),rows,cols,totalMines,isGameOver,isWin);

@override
String toString() {
  return 'BoardModel(cells: $cells, rows: $rows, cols: $cols, totalMines: $totalMines, isGameOver: $isGameOver, isWin: $isWin)';
}


}

/// @nodoc
abstract mixin class _$BoardModelCopyWith<$Res> implements $BoardModelCopyWith<$Res> {
  factory _$BoardModelCopyWith(_BoardModel value, $Res Function(_BoardModel) _then) = __$BoardModelCopyWithImpl;
@override @useResult
$Res call({
 List<CellModel> cells, int rows, int cols, int totalMines, bool isGameOver, bool isWin
});




}
/// @nodoc
class __$BoardModelCopyWithImpl<$Res>
    implements _$BoardModelCopyWith<$Res> {
  __$BoardModelCopyWithImpl(this._self, this._then);

  final _BoardModel _self;
  final $Res Function(_BoardModel) _then;

/// Create a copy of BoardModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cells = null,Object? rows = null,Object? cols = null,Object? totalMines = null,Object? isGameOver = null,Object? isWin = null,}) {
  return _then(_BoardModel(
cells: null == cells ? _self._cells : cells // ignore: cast_nullable_to_non_nullable
as List<CellModel>,rows: null == rows ? _self.rows : rows // ignore: cast_nullable_to_non_nullable
as int,cols: null == cols ? _self.cols : cols // ignore: cast_nullable_to_non_nullable
as int,totalMines: null == totalMines ? _self.totalMines : totalMines // ignore: cast_nullable_to_non_nullable
as int,isGameOver: null == isGameOver ? _self.isGameOver : isGameOver // ignore: cast_nullable_to_non_nullable
as bool,isWin: null == isWin ? _self.isWin : isWin // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
