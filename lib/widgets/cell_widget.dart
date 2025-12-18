
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/cell_model.dart';
import '../providers/game_provider.dart';

class CellWidget extends ConsumerWidget {
  final CellModel cell;

  const CellWidget({Key? key, required this.cell}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        ref.read(gameProvider.notifier).reveal(cell.index);
        // HapticFeedback.selectionClick(); // Add if we decide to add services.
      },
      onLongPress: () {
        ref.read(gameProvider.notifier).toggleFlag(cell.index);
        // HapticFeedback.mediumImpact();
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOutQuart,
        margin: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: _getBackgroundColor(context),
          borderRadius: BorderRadius.circular(8),
          boxShadow: cell.isRevealed
              ? []
              : [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: const Offset(0, 2),
                    blurRadius: 4,
                  )
                ],
        ),
        child: Center(
          child: _buildContent(context),
        ),
      ),
    );
  }

  Color _getBackgroundColor(BuildContext context) {
    if (cell.isRevealed) {
      if (cell.isMine) return Colors.redAccent;
      return Theme.of(context).colorScheme.surfaceContainerHighest; 
    }
    if (cell.isFlagged) return Colors.orangeAccent;
    return Theme.of(context).colorScheme.primaryContainer;
  }

  Widget _buildContent(BuildContext context) {
    if (cell.isFlagged) {
      return const Icon(Icons.flag, size: 20, color: Colors.white);
    }
    if (!cell.isRevealed) return const SizedBox.shrink();

    if (cell.isMine) {
      return const Icon(Icons.dangerous, size: 20, color: Colors.white);
    }

    if (cell.neighborMineCount > 0) {
      return Text(
        '${cell.neighborMineCount}',
        style: GoogleFonts.rubik(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: _getNumberColor(cell.neighborMineCount),
        ),
      );
    }

    return const SizedBox.shrink();
  }

  Color _getNumberColor(int count) {
    switch (count) {
      case 1: return Colors.blue;
      case 2: return Colors.green;
      case 3: return Colors.red;
      case 4: return Colors.purple;
      case 5: return Colors.orange;
      case 6: return Colors.teal;
      case 7: return Colors.black;
      case 8: return Colors.grey;
      default: return Colors.transparent;
    }
  }
}
