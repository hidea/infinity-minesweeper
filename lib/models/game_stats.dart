
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_stats.freezed.dart';
part 'game_stats.g.dart';

@freezed
abstract class GameStats with _$GameStats {
  const factory GameStats({
    @Default(0) int totalPlays,
    @Default(0) int totalWins,
    @Default(0) int currentStreak,
    @Default(0) int maxStreak,
    @Default(0) int totalMisses,
    @Default(0) int dailyPlays,
    @Default('') String lastPlayedDate,
  }) = _GameStats;

  factory GameStats.fromJson(Map<String, dynamic> json) => _$GameStatsFromJson(json);
}
