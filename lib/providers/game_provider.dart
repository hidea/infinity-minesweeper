
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/board_model.dart';
import 'stats_provider.dart';

part 'game_provider.g.dart';

@riverpod
class Game extends _$Game {
  @override
  BoardModel build() {
    return BoardModel.empty(7, 7, 7); // Initial dummy, state will be set by startGame
  }

  void startGame() {
    state = BoardModel.generate(7, 7, 7);
  }

  void reveal(int index) {
      if (state.isGameOver || state.isWin) return;
      
      // If it's the very first click of a fresh board (implied by all unrevealed?),
      // regenerate to ensure safety if we hit a mine?
      // Actually BoardModel.generate takes firstClickIndex to avoid this.
      // So if cell(index) is mine on first click, we might want to regenerate transparently.
      // But BoardModel needs to know if it's "fresh" to do that.
      // Simplification: We generate the board ON THE FIRST CLICK.
      // But we need to show the UI before first click. 
      // So we start with a generated board.
      
      // Better approach:
      // If the user clicks a mine on the very first move of the board, regenerate the board 
      // such that the clicked cell is safe, then reveal.
      // We can check: if `cells.where((c) => c.isRevealed).isEmpty` -> first move.
      
      BoardModel currentState = state;
      final isFirstMove = currentState.cells.where((c) => c.isRevealed).isEmpty;
      
      if (isFirstMove && currentState.cells[index].isMine) {
          // Regenerate with safety
          currentState = BoardModel.generate(7, 7, 7, firstClickIndex: index);
      }

      final newState = currentState.reveal(index);
      state = newState;

      if (newState.isWin) {
          ref.read(statsProvider.notifier).recordWin();
      } else if (newState.isGameOver) {
           ref.read(statsProvider.notifier).recordLoss();
      }
  }

  void toggleFlag(int index) {
      state = state.toggleFlag(index);
  }

  void nextBoard() {
      // Immediately generate next board
      state = BoardModel.generate(7, 7, 7);
  }
}
