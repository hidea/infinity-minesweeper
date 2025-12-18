
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/game_stats.dart';

part 'stats_provider.g.dart';

@riverpod
Future<SharedPreferences> sharedPreferences(Ref ref) async {
  return await SharedPreferences.getInstance();
}

@riverpod
class Stats extends _$Stats {
  static const _totalPlaysKey = 'totalPlays';
  static const _totalWinsKey = 'totalWins';
  static const _currentStreakKey = 'currentStreak';
  static const _maxStreakKey = 'maxStreak';
  static const _totalMissesKey = 'totalMisses';
  static const _dailyPlaysKey = 'dailyPlays';
  static const _lastPlayedDateKey = 'lastPlayedDate';

  @override
  Future<GameStats> build() async {
    final prefs = await ref.watch(sharedPreferencesProvider.future);
    
    final totalPlays = prefs.getInt(_totalPlaysKey) ?? 0;
    final totalWins = prefs.getInt(_totalWinsKey) ?? 0;
    final currentStreak = prefs.getInt(_currentStreakKey) ?? 0;
    final maxStreak = prefs.getInt(_maxStreakKey) ?? 0;
    final totalMisses = prefs.getInt(_totalMissesKey) ?? 0;
    
    final lastPlayedDate = prefs.getString(_lastPlayedDateKey) ?? '';
    final today = DateTime.now().toIso8601String().split('T')[0];
    
    int dailyPlays = prefs.getInt(_dailyPlaysKey) ?? 0;
    if (lastPlayedDate != today) {
       dailyPlays = 0;
       // We don't save reset dailyPlays here to avoid partial writes, 
       // but we will use 0 and save it on next update.
    }

    return GameStats(
      totalPlays: totalPlays,
      totalWins: totalWins,
      currentStreak: currentStreak,
      maxStreak: maxStreak,
      totalMisses: totalMisses,
      dailyPlays: dailyPlays,
      lastPlayedDate: today,
    );
  }

  Future<void> recordWin() async {
    final currentState = state.value;
    if (currentState == null) return;
    
    final prefs = await ref.read(sharedPreferencesProvider.future);
    final today = DateTime.now().toIso8601String().split('T')[0];
    
    int dailyPlays = currentState.dailyPlays;
    if (currentState.lastPlayedDate != today) {
        dailyPlays = 0;
    }

    final newStreak = currentState.currentStreak + 1;
    final newMaxStreak = newStreak > currentState.maxStreak ? newStreak : currentState.maxStreak;
    
    final newState = currentState.copyWith(
      totalPlays: currentState.totalPlays + 1,
      totalWins: currentState.totalWins + 1,
      currentStreak: newStreak,
      maxStreak: newMaxStreak,
      dailyPlays: dailyPlays + 1,
      lastPlayedDate: today,
    );

    state = AsyncData(newState);
    
    await Future.wait([
      prefs.setInt(_totalPlaysKey, newState.totalPlays),
      prefs.setInt(_totalWinsKey, newState.totalWins),
      prefs.setInt(_currentStreakKey, newState.currentStreak),
      prefs.setInt(_maxStreakKey, newState.maxStreak),
      prefs.setInt(_dailyPlaysKey, newState.dailyPlays),
      prefs.setString(_lastPlayedDateKey, newState.lastPlayedDate),
    ]);
  }

  Future<void> recordLoss() async {
    final currentState = state.value;
    if (currentState == null) return;

    final prefs = await ref.read(sharedPreferencesProvider.future);
    final today = DateTime.now().toIso8601String().split('T')[0];

    int dailyPlays = currentState.dailyPlays;
    if (currentState.lastPlayedDate != today) {
        dailyPlays = 0;
    }

    final newState = currentState.copyWith(
      totalPlays: currentState.totalPlays + 1,
      totalMisses: currentState.totalMisses + 1,
      currentStreak: 0,
       dailyPlays: dailyPlays + 1,
      lastPlayedDate: today,
    );

    state = AsyncData(newState);

     await Future.wait([
      prefs.setInt(_totalPlaysKey, newState.totalPlays),
      prefs.setInt(_totalMissesKey, newState.totalMisses),
      prefs.setInt(_currentStreakKey, 0),
      prefs.setInt(_dailyPlaysKey, newState.dailyPlays),
      prefs.setString(_lastPlayedDateKey, newState.lastPlayedDate),
    ]);
  }
}
