
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cell_model.freezed.dart';

@freezed
abstract class CellModel with _$CellModel {
  const factory CellModel({
    required int index,
    @Default(false) bool isMine,
    @Default(false) bool isRevealed,
    @Default(false) bool isFlagged,
    @Default(0) int neighborMineCount,
  }) = _CellModel;
}
