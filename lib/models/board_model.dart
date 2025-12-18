
import 'dart:math';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'cell_model.dart';

part 'board_model.freezed.dart';

@freezed
abstract class BoardModel with _$BoardModel {
  const BoardModel._(); 

  const factory BoardModel({
    required List<CellModel> cells,
    required int rows,
    required int cols,
    required int totalMines,
    @Default(false) bool isGameOver,
    @Default(false) bool isWin,
  }) = _BoardModel;

  factory BoardModel.empty(int rows, int cols, int mines) {
    return BoardModel(
      cells: List.generate(
        rows * cols,
        (index) => CellModel(index: index),
      ),
      rows: rows,
      cols: cols,
      totalMines: mines,
    );
  }

  factory BoardModel.generate(int rows, int cols, int mines, {int? firstClickIndex}) {
    final rand = Random();
    final totalCells = rows * cols;
    final List<bool> mineLocations = List.filled(totalCells, false);
    
    int placedMines = 0;
    while (placedMines < mines) {
      int index = rand.nextInt(totalCells);
      // Ensure we don't place a mine on the first clicked cell or its neighbors to guarantee a safe start
      if (!mineLocations[index] && (firstClickIndex == null || !_isNeighbor(index, firstClickIndex, rows, cols))) {
         // Also avoid the first click itself
         if (firstClickIndex != null && index == firstClickIndex) continue;

        mineLocations[index] = true;
        placedMines++;
      }
    }

    final List<CellModel> newCells = List.generate(totalCells, (index) {
      return CellModel(
        index: index,
        isMine: mineLocations[index],
        neighborMineCount: _countNeighbors(index, mineLocations, rows, cols),
      );
    });

    return BoardModel(
      cells: newCells,
      rows: rows,
      cols: cols,
      totalMines: mines,
    );
  }

  static bool _isNeighbor(int index1, int index2, int rows, int cols) {
      if (index1 == index2) return true;
      final r1 = index1 ~/ cols;
      final c1 = index1 % cols;
      final r2 = index2 ~/ cols;
      final c2 = index2 % cols;
      return (r1 - r2).abs() <= 1 && (c1 - c2).abs() <= 1;
  }

  static int _countNeighbors(int index, List<bool> mines, int rows, int cols) {
    int count = 0;
    final r = index ~/ cols;
    final c = index % cols;

    for (int dr = -1; dr <= 1; dr++) {
      for (int dc = -1; dc <= 1; dc++) {
        if (dr == 0 && dc == 0) continue;
        final nr = r + dr;
        final nc = c + dc;
        if (nr >= 0 && nr < rows && nc >= 0 && nc < cols) {
          final nIndex = nr * cols + nc;
          if (mines[nIndex]) count++;
        }
      }
    }
    return count;
  }

  BoardModel toggleFlag(int index) {
      if (isGameOver || isWin) return this;
      final cell = cells[index];
      if (cell.isRevealed) return this;

      final newCells = List<CellModel>.from(cells);
      newCells[index] = cell.copyWith(isFlagged: !cell.isFlagged);
      return copyWith(cells: newCells);
  }

  BoardModel reveal(int index) {
      if (isGameOver || isWin) return this;
      final cell = cells[index];
      if (cell.isFlagged || cell.isRevealed) return this;

      if (cell.isMine) {
          // Game Over - reveal all mines
          final newCells = cells.map((c) => c.isMine ? c.copyWith(isRevealed: true) : c).toList();
          return copyWith(cells: newCells, isGameOver: true, isWin: false);
      }

      // Reveal logic with flood fill
      final newCells = List<CellModel>.from(cells);
      _floodFill(index, newCells);
      
      // Check win condition
      final unrevealedSafeCells = newCells.where((c) => !c.isMine && !c.isRevealed).isEmpty;
      
      return copyWith(cells: newCells, isWin: unrevealedSafeCells);
  }

  void _floodFill(int index, List<CellModel> currentCells) {
      if (index < 0 || index >= currentCells.length) return;
      if (currentCells[index].isRevealed || currentCells[index].isFlagged || currentCells[index].isMine) return;

      currentCells[index] = currentCells[index].copyWith(isRevealed: true);

      if (currentCells[index].neighborMineCount == 0) {
          final r = index ~/ cols;
          final c = index % cols;

          for (int dr = -1; dr <= 1; dr++) {
            for (int dc = -1; dc <= 1; dc++) {
                if (dr == 0 && dc == 0) continue;
                final nr = r + dr;
                final nc = c + dc;
                if (nr >= 0 && nr < rows && nc >= 0 && nc < cols) {
                    _floodFill(nr * cols + nc, currentCells);
                }
            }
          }
      }
  }
}
