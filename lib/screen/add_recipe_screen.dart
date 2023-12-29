import 'package:flutter/material.dart';

import 'home_screen.dart';

class AddRecipeScreen extends StatelessWidget {
  const AddRecipeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Didis fancy cookbook app")
      ),
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  children: [
                    FloatingActionButton.small(
                      backgroundColor: Colors.white,
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const HomeScreen())),
                      child: const Icon(Icons.close_rounded),
                    ),
                Card(
                  child: SizedBox(
                    width: 300,
                    height: 100,
                    child: Center(child: Text('Rezept aus dem Internet hinzufügen')),
                  ))
                  ],
                ))));
  }
}
