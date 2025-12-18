// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GameStats {

 int get totalPlays; int get totalWins; int get currentStreak; int get maxStreak; int get totalMisses; int get dailyPlays; String get lastPlayedDate;
/// Create a copy of GameStats
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameStatsCopyWith<GameStats> get copyWith => _$GameStatsCopyWithImpl<GameStats>(this as GameStats, _$identity);

  /// Serializes this GameStats to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameStats&&(identical(other.totalPlays, totalPlays) || other.totalPlays == totalPlays)&&(identical(other.totalWins, totalWins) || other.totalWins == totalWins)&&(identical(other.currentStreak, currentStreak) || other.currentStreak == currentStreak)&&(identical(other.maxStreak, maxStreak) || other.maxStreak == maxStreak)&&(identical(other.totalMisses, totalMisses) || other.totalMisses == totalMisses)&&(identical(other.dailyPlays, dailyPlays) || other.dailyPlays == dailyPlays)&&(identical(other.lastPlayedDate, lastPlayedDate) || other.lastPlayedDate == lastPlayedDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalPlays,totalWins,currentStreak,maxStreak,totalMisses,dailyPlays,lastPlayedDate);

@override
String toString() {
  return 'GameStats(totalPlays: $totalPlays, totalWins: $totalWins, currentStreak: $currentStreak, maxStreak: $maxStreak, totalMisses: $totalMisses, dailyPlays: $dailyPlays, lastPlayedDate: $lastPlayedDate)';
}


}

/// @nodoc
abstract mixin class $GameStatsCopyWith<$Res>  {
  factory $GameStatsCopyWith(GameStats value, $Res Function(GameStats) _then) = _$GameStatsCopyWithImpl;
@useResult
$Res call({
 int totalPlays, int totalWins, int currentStreak, int maxStreak, int totalMisses, int dailyPlays, String lastPlayedDate
});




}
/// @nodoc
class _$GameStatsCopyWithImpl<$Res>
    implements $GameStatsCopyWith<$Res> {
  _$GameStatsCopyWithImpl(this._self, this._then);

  final GameStats _self;
  final $Res Function(GameStats) _then;

/// Create a copy of GameStats
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalPlays = null,Object? totalWins = null,Object? currentStreak = null,Object? maxStreak = null,Object? totalMisses = null,Object? dailyPlays = null,Object? lastPlayedDate = null,}) {
  return _then(_self.copyWith(
totalPlays: null == totalPlays ? _self.totalPlays : totalPlays // ignore: cast_nullable_to_non_nullable
as int,totalWins: null == totalWins ? _self.totalWins : totalWins // ignore: cast_nullable_to_non_nullable
as int,currentStreak: null == currentStreak ? _self.currentStreak : currentStreak // ignore: cast_nullable_to_non_nullable
as int,maxStreak: null == maxStreak ? _self.maxStreak : maxStreak // ignore: cast_nullable_to_non_nullable
as int,totalMisses: null == totalMisses ? _self.totalMisses : totalMisses // ignore: cast_nullable_to_non_nullable
as int,dailyPlays: null == dailyPlays ? _self.dailyPlays : dailyPlays // ignore: cast_nullable_to_non_nullable
as int,lastPlayedDate: null == lastPlayedDate ? _self.lastPlayedDate : lastPlayedDate // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GameStats].
extension GameStatsPatterns on GameStats {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameStats value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameStats() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameStats value)  $default,){
final _that = this;
switch (_that) {
case _GameStats():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameStats value)?  $default,){
final _that = this;
switch (_that) {
case _GameStats() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int totalPlays,  int totalWins,  int currentStreak,  int maxStreak,  int totalMisses,  int dailyPlays,  String lastPlayedDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameStats() when $default != null:
return $default(_that.totalPlays,_that.totalWins,_that.currentStreak,_that.maxStreak,_that.totalMisses,_that.dailyPlays,_that.lastPlayedDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int totalPlays,  int totalWins,  int currentStreak,  int maxStreak,  int totalMisses,  int dailyPlays,  String lastPlayedDate)  $default,) {final _that = this;
switch (_that) {
case _GameStats():
return $default(_that.totalPlays,_that.totalWins,_that.currentStreak,_that.maxStreak,_that.totalMisses,_that.dailyPlays,_that.lastPlayedDate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int totalPlays,  int totalWins,  int currentStreak,  int maxStreak,  int totalMisses,  int dailyPlays,  String lastPlayedDate)?  $default,) {final _that = this;
switch (_that) {
case _GameStats() when $default != null:
return $default(_that.totalPlays,_that.totalWins,_that.currentStreak,_that.maxStreak,_that.totalMisses,_that.dailyPlays,_that.lastPlayedDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GameStats implements GameStats {
  const _GameStats({this.totalPlays = 0, this.totalWins = 0, this.currentStreak = 0, this.maxStreak = 0, this.totalMisses = 0, this.dailyPlays = 0, this.lastPlayedDate = ''});
  factory _GameStats.fromJson(Map<String, dynamic> json) => _$GameStatsFromJson(json);

@override@JsonKey() final  int totalPlays;
@override@JsonKey() final  int totalWins;
@override@JsonKey() final  int currentStreak;
@override@JsonKey() final  int maxStreak;
@override@JsonKey() final  int totalMisses;
@override@JsonKey() final  int dailyPlays;
@override@JsonKey() final  String lastPlayedDate;

/// Create a copy of GameStats
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameStatsCopyWith<_GameStats> get copyWith => __$GameStatsCopyWithImpl<_GameStats>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameStatsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameStats&&(identical(other.totalPlays, totalPlays) || other.totalPlays == totalPlays)&&(identical(other.totalWins, totalWins) || other.totalWins == totalWins)&&(identical(other.currentStreak, currentStreak) || other.currentStreak == currentStreak)&&(identical(other.maxStreak, maxStreak) || other.maxStreak == maxStreak)&&(identical(other.totalMisses, totalMisses) || other.totalMisses == totalMisses)&&(identical(other.dailyPlays, dailyPlays) || other.dailyPlays == dailyPlays)&&(identical(other.lastPlayedDate, lastPlayedDate) || other.lastPlayedDate == lastPlayedDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalPlays,totalWins,currentStreak,maxStreak,totalMisses,dailyPlays,lastPlayedDate);

@override
String toString() {
  return 'GameStats(totalPlays: $totalPlays, totalWins: $totalWins, currentStreak: $currentStreak, maxStreak: $maxStreak, totalMisses: $totalMisses, dailyPlays: $dailyPlays, lastPlayedDate: $lastPlayedDate)';
}


}

/// @nodoc
abstract mixin class _$GameStatsCopyWith<$Res> implements $GameStatsCopyWith<$Res> {
  factory _$GameStatsCopyWith(_GameStats value, $Res Function(_GameStats) _then) = __$GameStatsCopyWithImpl;
@override @useResult
$Res call({
 int totalPlays, int totalWins, int currentStreak, int maxStreak, int totalMisses, int dailyPlays, String lastPlayedDate
});




}
/// @nodoc
class __$GameStatsCopyWithImpl<$Res>
    implements _$GameStatsCopyWith<$Res> {
  __$GameStatsCopyWithImpl(this._self, this._then);

  final _GameStats _self;
  final $Res Function(_GameStats) _then;

/// Create a copy of GameStats
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalPlays = null,Object? totalWins = null,Object? currentStreak = null,Object? maxStreak = null,Object? totalMisses = null,Object? dailyPlays = null,Object? lastPlayedDate = null,}) {
  return _then(_GameStats(
totalPlays: null == totalPlays ? _self.totalPlays : totalPlays // ignore: cast_nullable_to_non_nullable
as int,totalWins: null == totalWins ? _self.totalWins : totalWins // ignore: cast_nullable_to_non_nullable
as int,currentStreak: null == currentStreak ? _self.currentStreak : currentStreak // ignore: cast_nullable_to_non_nullable
as int,maxStreak: null == maxStreak ? _self.maxStreak : maxStreak // ignore: cast_nullable_to_non_nullable
as int,totalMisses: null == totalMisses ? _self.totalMisses : totalMisses // ignore: cast_nullable_to_non_nullable
as int,dailyPlays: null == dailyPlays ? _self.dailyPlays : dailyPlays // ignore: cast_nullable_to_non_nullable
as int,lastPlayedDate: null == lastPlayedDate ? _self.lastPlayedDate : lastPlayedDate // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
