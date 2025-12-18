
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import '../providers/game_provider.dart';
import '../widgets/board_widget.dart';
import '../widgets/stats_display.dart';
import 'options_screen.dart';

class GameScreen extends ConsumerStatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends ConsumerState<GameScreen> with SingleTickerProviderStateMixin {
  late AnimationController _transitionController;
  late Animation<Offset> _slideAnimation;
  Key _boardKey = UniqueKey();
  Timer? _transitionTimer;

  @override
  void initState() {
    super.initState();
    _transitionController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _slideAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(-1.5, 0), // Slide out to left
    ).animate(CurvedAnimation(parent: _transitionController, curve: Curves.easeInOutBack));
    
    // Start the game initially
    WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.read(gameProvider.notifier).startGame();
    });
  }

  @override
  void dispose() {
    _transitionController.dispose();
    _transitionTimer?.cancel();
    super.dispose();
  }

  void _handleGameEnd(bool isWin) {
    // Delay slightly to show result (mines or cleared board)
    // If win, almost instant. If loss, maybe 1 second.
    final delay = isWin ? const Duration(milliseconds: 300) : const Duration(milliseconds: 1500);
    
    _transitionTimer?.cancel();
    _transitionTimer = Timer(delay, () {
      _animateToNextBoard();
    });
  }

  void _animateToNextBoard() {
      // 1. Slide out
      _transitionController.forward().then((_) {
          // 2. Generate new board
          ref.read(gameProvider.notifier).nextBoard();
          setState(() {
              _boardKey = UniqueKey(); // Force rebuild/reset state of widget if needed
          });
          _transitionController.reset();
          
          // 3. Slide in (simulated by resetting and sliding from right? Or just appear?)
          // "Scroll in" implies: Old one goes Left, New one comes from Right.
          // So I need a SlideTransition that handles both?
          // Or I can use a PageView-like effect? 
          // Simplest with AnimationController:
          // Reset controller to 0 puts it back in center. 
          // To slide IN from right, I need to start at Offset(1.5, 0) and animate to zero.
          
          _slideAnimation = Tween<Offset>(
            begin: const Offset(1.5, 0),
            end: Offset.zero,
          ).animate(CurvedAnimation(parent: _transitionController, curve: Curves.easeOutBack));
          
          _transitionController.forward();
      });
  }

  @override
  Widget build(BuildContext context) {
    final gameState = ref.watch(gameProvider);
    
    ref.listen(gameProvider, (previous, next) {
      if ((!previous!.isGameOver && next.isGameOver) || (!previous.isWin && next.isWin)) {
          // If we just won or lost
          _handleGameEnd(next.isWin);
      }
    });

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'ISWEEPER',
                style: GoogleFonts.orbitron(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: StatsDisplay(),
            ),
            const Spacer(),
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SlideTransition(
                  position: _slideAnimation,
                  child: KeyedSubtree(
                      key: _boardKey,
                      child: const BoardWidget(),
                  ),
                ),
              ),
            ),
            const Spacer(),
             Padding(
              padding: const EdgeInsets.only(bottom: 24.0),
              child: TextButton.icon(
                onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const OptionsScreen()));
                }, 
                icon: const Icon(Icons.settings),
                label: const Text('OPTIONS'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
