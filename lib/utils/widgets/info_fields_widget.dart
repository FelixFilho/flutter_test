import 'package:flutter/material.dart';

class InfoFieldsWidget extends StatelessWidget {
  final String title;
  final String content;

  const InfoFieldsWidget({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: DefaultTextStyle.of(context).style,
          children: [
            TextSpan(text: title),
            const TextSpan(text: ': '),
            TextSpan(
              text: content,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
