import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'views/home_menu.dart';

class Game extends StatelessWidget {
  const Game({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Network Architect',
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.lightBlue,
          accentColor: Colors.lightBlueAccent,
        ),
        textTheme: GoogleFonts.ubuntuTextTheme(),
      ),
      home: const HomeMenu(),
    );
  }
}