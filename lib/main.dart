
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/title_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
  ));

  runApp(
    const ProviderScope(
      child: InfiniteMinesweeperApp(),
    ),
  );
}

class InfiniteMinesweeperApp extends StatelessWidget {
  const InfiniteMinesweeperApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Infinite Minesweeper',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF6C63FF), // A nice indigo/purple
          brightness: Brightness.light,
        ).copyWith(
            surface: const Color(0xFFF7F9FC),
        ),
        textTheme: GoogleFonts.rubikTextTheme(),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF6C63FF),
          brightness: Brightness.dark,
        ),
        textTheme: GoogleFonts.rubikTextTheme(ThemeData.dark().textTheme),
      ),
      themeMode: ThemeMode.system, // Or control via provider if implemented
      home: const TitleScreen(),
    );
  }
}
