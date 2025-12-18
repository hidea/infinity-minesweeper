
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import '../providers/stats_provider.dart';

class StatsDisplay extends ConsumerWidget {
  const StatsDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final statsAsync = ref.watch(statsProvider);

    return statsAsync.when(
      data: (stats) {
        final double missRate = stats.totalPlays > 0
            ? (stats.totalMisses / stats.totalPlays) * 100
            : 0;

        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildStatItem(context, 'Streak', '${stats.currentStreak}', Icons.local_fire_department, Colors.orange),
            _buildStatItem(context, 'Miss Rate', '${missRate.toStringAsFixed(1)}%', Icons.error_outline, Colors.redAccent),
            _buildStatItem(context, 'Today', '${stats.dailyPlays}', Icons.today, Colors.blueAccent),
          ],
        );
      },
      loading: () => const SizedBox(height: 50, child: Center(child: CircularProgressIndicator())),
      error: (_, __) => const SizedBox.shrink(),
    );
  }

  Widget _buildStatItem(BuildContext context, String label, String value, IconData icon, Color color) {
    return Column(
      children: [
        Icon(icon, color: color, size: 24),
        const SizedBox(height: 4),
        Text(
          value,
          style: GoogleFonts.rubik(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        Text(
          label,
          style: GoogleFonts.rubik(
            fontSize: 12,
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}
