
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/game_provider.dart';
import 'cell_widget.dart';

class BoardWidget extends ConsumerWidget {
  const BoardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final board = ref.watch(gameProvider);

    return AspectRatio(
      aspectRatio: 1,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: board.cols,
        ),
        itemCount: board.cells.length,
        itemBuilder: (context, index) {
          return CellWidget(cell: board.cells[index]);
        },
      ),
    );
  }
}
