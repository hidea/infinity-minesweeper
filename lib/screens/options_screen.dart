
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OptionsScreen extends StatefulWidget {
  const OptionsScreen({Key? key}) : super(key: key);

  @override
  State<OptionsScreen> createState() => _OptionsScreenState();
}

class _OptionsScreenState extends State<OptionsScreen> {
  bool _vibration = true;
  bool _sound = true;
  bool _darkMode = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OPTIONS', style: GoogleFonts.orbitron()),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        children: [
          SwitchListTile(
            title: Text('Vibration', style: GoogleFonts.rubik(fontSize: 18)),
            value: _vibration,
            onChanged: (val) => setState(() => _vibration = val),
          ),
          SwitchListTile(
            title: Text('Sound Effects', style: GoogleFonts.rubik(fontSize: 18)),
            value: _sound,
            onChanged: (val) => setState(() => _sound = val),
          ),
          SwitchListTile(
            title: Text('Dark Mode', style: GoogleFonts.rubik(fontSize: 18)),
            value: _darkMode,
            onChanged: (val) => setState(() => _darkMode = val),
          ),
        ],
      ),
    );
  }
}
