import 'package:flutter/material.dart';
import 'package:prolog_test/utils/constants.dart';

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
              style: OutlinedButton.styleFrom(
                  backgroundColor: PrologConstants.normalBlue),
              child: Text(
                'Tentar novamente'.toUpperCase(),
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.8),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
