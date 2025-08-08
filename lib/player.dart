// Import the Flutter Material package that provides ready-to-use Material Design widgets.
import 'package:flutter/material.dart';


// Define a stateful widget to manage dynamic player stats.
class PlayerScreen extends StatefulWidget {
  const PlayerScreen({super.key});

  // Directly return the state object without using an abstract class.
  @override
  State createState() {
    return _PlayerScreenState();
  }
}

class _PlayerScreenState extends State {
    int health = 10;
    int level = 1;

    final String playerName = 'You';
    final String playerClass = 'Human';

    void increaseHealth() {
      setState(() {
        health++;
      });
    }
    void decreaseHealth() {
      setState(() {
        health--;
      });
    }

    void increaseLevel() {
      setState(() {
        level++;
      });
    }

    void decreaseLevel() {
      setState(() {
        level++;
      });
    }

  @override
  Widget build(BuildContext context) {
    // Scaffold provides the basic structure/layout for the screen (like AppBar, Body, etc.).
    return Scaffold(
      // We set the background to transparent so that the gradient below can show through.
      backgroundColor: Colors.transparent,

      // The main body of the screen is a container with a gradient background.
      body: Container(
        width: double.infinity, // Make the container take up the full screen width.
        height: double.infinity, // Make the container take up the full screen height.

        // BoxDecoration lets us apply visual styling to the container.
        decoration: const BoxDecoration(
          // We apply a linear gradient from top-left to bottom-right.
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 247, 42, 76), // Light red
              Color.fromARGB(255, 97, 0, 73), // Deep purple
            ],
          ),
        ),

        // Column widget lays out its children vertically.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center everything vertically.
          children: [
            // Title text at the top of the screen.
            const Text(
              'Dice and Dungeons!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.white, // White text to contrast the dark background.
              ),
            ),

            const SizedBox(height: 20), // Spacer between text and image.

            // Display the player image (must be in your assets folder).
            // Character image
            Image.asset(
              'assets/images/player.png',
              height: 250,
              fit: BoxFit.contain,
            ),

            const SizedBox(height: 20), // Spacer between image and labels.

            // Row to display Name and Class labels.
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space them evenly across the row.
              children: const [
                Text('Name: You', style: TextStyle(color: Colors.white)),
                Text('Class: Human', style: TextStyle(color: Colors.white)),
              ],
            ),

            const SizedBox(height: 10), // Spacer between rows.

            // Row to display Health and Level labels.
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Health: $health', style: const TextStyle(color: Colors.white)),
                Text('Level: $level', style: const TextStyle(color: Colors.white)),
              ],
            ),

            const SizedBox(height: 10), // Spacer between labels and buttons.

            // Row containing four buttons to control HP and Level (currently inactive).
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Each button currently has no functionality (empty onPressed).
                ElevatedButton(
                  onPressed: () {increaseHealth();}, // Placeholder for future logic to increase HP.
                  child: const Text('HP+'),
                ),
                ElevatedButton(
                  onPressed: () {decreaseHealth();}, // Placeholder to decrease HP.
                  child: const Text('HP-'),
                ),
                ElevatedButton(
                  onPressed: () {increaseLevel();}, // Placeholder to increase level.
                  child: const Text('Lvl+'),
                ),
                ElevatedButton(
                  onPressed: () {decreaseLevel();}, // Placeholder to decrease level.
                  child: const Text('Lvl-'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
  