import 'package:flutter/material.dart';

void main() {
  runApp(const PrologTest());
}

class PrologTest extends StatelessWidget {
  const PrologTest({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Prolog Test'),
        ),
      ),
    );
  }
}
