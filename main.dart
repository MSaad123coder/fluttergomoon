import 'package:flutter/material.dart'; // Importing the Flutter material library, which provides ready-made UI components.
import 'package:flutter_application_1/pages/home_page.dart'; // Importing the `home_page.dart` file for accessing additional pages or logic (currently unused here).

// The `main` function is the starting point of every Dart application.
void main() {
  runApp(MyApp()); // This initializes and runs the `MyApp` widget.
}

// Declaring the `MyApp` class, which extends `StatelessWidget`.
// Stateless widgets don’t change state (content or appearance) during runtime.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) // Constructor for `MyApp`, initializing it.
      : super(
            key:
                key); // Calls the base constructor to provide built-in functionality to the app.

  @override
  Widget build(BuildContext context) {
    // The `build` method describes what the widget should look like.
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Colors
              .lightBlue), // Applying a theme with a light blue background.
      title:
          "Go Moon", // Setting the title of the app (used by some platforms for display).
      home: Scaffold(
        // The main layout of your app's home screen.
        backgroundColor: Colors
            .lightBlue, // Sets the background color of the screen to light blue.
      ),
    );
  }
}
