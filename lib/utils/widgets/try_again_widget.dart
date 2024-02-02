import 'package:flutter/material.dart';

class TryAgainWidget extends StatelessWidget {
  final VoidCallback onPressed;
  const TryAgainWidget({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Tivemos um problema carregando sua requisição',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 12),
            OutlinedButton(
              onPressed: onPressed,
              child: const Text('Tentar novamente'),
            ),
          ],
        ),
      ),
    );
  }
}
