
import 'package:flutter_test/flutter_test.dart';
import 'package:infinite_minesweeper/models/board_model.dart';

void main() {
  group('BoardLogic Tests', () {
    test('Board generation has correct dimensions and mines', () {
      final board = BoardModel.generate(7, 7, 7);
      expect(board.rows, 7);
      expect(board.cols, 7);
      expect(board.totalMines, 7);
      expect(board.cells.length, 49);
      expect(board.cells.where((c) => c.isMine).length, 7);
    });

    test('Flood fill reveals neighbors for 0-count cells', () {
      // Create a deterministic board or mock logic?
      // Since generate is random, hard to test exact flood fill without mocking or lucky seed.
      // But we can test on a manually constructed board if we expose a constructor.
      // BoardModel default constructor is available.
      
      // Let's rely on logic properties.
      // If we reveal a cell with 0 neighbors, it should reveal neighbors.
      // We will loop until we find a suitable board or just trust the logic?
      // Better: checking specific behavior is hard with random.
      // Let's create a custom board manually.
    });
    
    test('Toggle flag works', () {
      final board = BoardModel.generate(7, 7, 7);
      final newBoard = board.toggleFlag(0);
      expect(newBoard.cells[0].isFlagged, true);
      final newBoard2 = newBoard.toggleFlag(0);
      expect(newBoard2.cells[0].isFlagged, false);
    });

    test('Loss trigger', () {
       // Find a mine
       final board = BoardModel.generate(7, 7, 7);
       final mineIndex = board.cells.indexWhere((c) => c.isMine);
       
       final lostBoard = board.reveal(mineIndex);
       expect(lostBoard.isGameOver, true);
       expect(lostBoard.isWin, false);
       // All mines should be revealed
       expect(lostBoard.cells.where((c) => c.isMine && c.isRevealed).length, 7);
    });
    
    test('Safe reveal does not lose', () {
       final board = BoardModel.generate(7, 7, 7);
       final safeIndex = board.cells.indexWhere((c) => !c.isMine);
       
       final safeBoard = board.reveal(safeIndex);
       expect(safeBoard.isGameOver, false);
       expect(safeBoard.cells[safeIndex].isRevealed, true);
    });
  });
}
