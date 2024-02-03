import 'package:flutter/material.dart';
import 'package:prolog_test/utils/constants.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: PrologConstants.softMarine,
      ),
    );
  }
}
