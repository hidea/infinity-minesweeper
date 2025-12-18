
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'game_screen.dart';

class TitleScreen extends StatelessWidget {
  const TitleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'INFINITE',
              style: GoogleFonts.orbitron(
                fontSize: 40,
                fontWeight: FontWeight.w900,
                color: Theme.of(context).colorScheme.primary,
                letterSpacing: 4,
              ),
            ),
             Text(
              'SWEEPER',
              style: GoogleFonts.orbitron(
                fontSize: 40,
                fontWeight: FontWeight.w900,
                color: Theme.of(context).colorScheme.secondary,
                letterSpacing: 4,
              ),
            ),
            const SizedBox(height: 60),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const GameScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 20),
                backgroundColor: Theme.of(context).colorScheme.primaryContainer,
              ),
              child: Text(
                'START GAME',
                style: GoogleFonts.rubik(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
