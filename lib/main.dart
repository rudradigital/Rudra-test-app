
import 'package:flutter/material.dart';

void main() {
  runApp(const RudraApp());
}

class RudraApp extends StatelessWidget {
  const RudraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rudra Test',
      theme: ThemeData(
        colorSchemeSeed: const Color(0xFF800000),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF8F0),
      appBar: AppBar(
        backgroundColor: const Color(0xFF800000),
        foregroundColor: Colors.white,
        title: const Text('Rudra Test App'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.rocket_launch,
              size: 85,
              color: Color(0xFF800000),
            ),
            const SizedBox(height: 20),
            const Text(
              'Welcome to Rudra!',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            const Text('Your first Android App'),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Rudra App is working!'),
                  ),
                );
              },
              child: const Text('GET STARTED'),
            ),
          ],
        ),
      ),
    );
  }
}
