import 'package:flutter/material.dart';
import 'presentation/welcome_screen.dart';
void main() {
  runApp(
    const MaterialApp(
      title: "Flutter Demo",
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: CustomAppBar(),
        body: WelcomeScreen(),
        bottomNavigationBar: CustomBottomBar(),
      ),
    ),
  );
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
          backgroundColor: const Color.fromARGB(255, 245, 219, 76),
          title: Text(
            style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 85, 75, 75)),
            'My First Flutter App'),
          centerTitle: true,
        );
        
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
          color: const Color.fromARGB(255, 245, 219, 76),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              style: TextStyle(fontSize: 16, color: const Color.fromARGB(255, 85, 75, 75)),
              '© 2024 My Flutter App'),
          ),
        );
  }
}

