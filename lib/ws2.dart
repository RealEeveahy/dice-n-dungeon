import 'package:flutter/material.dart';

class WS2Design extends StatelessWidget {
  const WS2Design ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      home: Scaffold (
        body: Center(
          child: Column(
            children: [
              Text(
                "Home Screen", 
                style: TextStyle(
                  fontSize: 30,
                ),
                textAlign: TextAlign.center
                ),
                SizedBox(height:30),
                Image.network(
                'https://www.ecu.edu.au/__data/assets/image/0004/1100389/ecu-logo.png',
                width: 200,
                height: 200,
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () => print("Yes button pressed"),
                      child: Text("Yes"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green, // Changes the button color to red
                      )
                    ),
                    SizedBox(width: 30), // Adds space between buttons
                    ElevatedButton(
                      onPressed: () => print("No button pressed"),
                      child: Text("No"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red, // Changes the button color to red
                      )
                    )
                  ],
                )
            ]
          ),
          )
        )
      );
  }
}