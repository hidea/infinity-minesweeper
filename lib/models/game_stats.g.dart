// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GameStats _$GameStatsFromJson(Map<String, dynamic> json) => _GameStats(
  totalPlays: (json['totalPlays'] as num?)?.toInt() ?? 0,
  totalWins: (json['totalWins'] as num?)?.toInt() ?? 0,
  currentStreak: (json['currentStreak'] as num?)?.toInt() ?? 0,
  maxStreak: (json['maxStreak'] as num?)?.toInt() ?? 0,
  totalMisses: (json['totalMisses'] as num?)?.toInt() ?? 0,
  dailyPlays: (json['dailyPlays'] as num?)?.toInt() ?? 0,
  lastPlayedDate: json['lastPlayedDate'] as String? ?? '',
);

Map<String, dynamic> _$GameStatsToJson(_GameStats instance) =>
    <String, dynamic>{
      'totalPlays': instance.totalPlays,
      'totalWins': instance.totalWins,
      'currentStreak': instance.currentStreak,
      'maxStreak': instance.maxStreak,
      'totalMisses': instance.totalMisses,
      'dailyPlays': instance.dailyPlays,
      'lastPlayedDate': instance.lastPlayedDate,
    };
