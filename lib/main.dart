import 'package:flutter/material.dart';

// This is the entry point of the Flutter app.
// The 'main' function runs first when the app starts.
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Scaffold provides a basic visual structure for the screen,
      // including app bars, floating action buttons, drawers, etc.
      home: Scaffold(
        // AppBar is a widget that appears at the top of the screen.
        // It typically holds the title of the page or app.
        appBar: AppBar(
          // The title of the AppBar is a Text widget.
          title: Text('Dice and Dungeons!'),
        ),

        // The body of the screen appears below the AppBar.
        // Since there's no Center widget wrapping this,
        // the text will be aligned to the top-left by default.
        body: Text(
          'Dice and Dungeons!',
          // TextStyle allows us to change how the text looks.
          // Here we set the font size to 24.
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

