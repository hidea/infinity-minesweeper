// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Game)
const gameProvider = GameProvider._();

final class GameProvider extends $NotifierProvider<Game, BoardModel> {
  const GameProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'gameProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$gameHash();

  @$internal
  @override
  Game create() => Game();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BoardModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BoardModel>(value),
    );
  }
}

String _$gameHash() => r'84e874df039c02daf521a96fb46ad0a643ec7f66';

abstract class _$Game extends $Notifier<BoardModel> {
  BoardModel build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<BoardModel, BoardModel>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<BoardModel, BoardModel>,
              BoardModel,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
