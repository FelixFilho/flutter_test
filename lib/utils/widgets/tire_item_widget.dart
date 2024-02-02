import 'package:flutter/material.dart';
import 'package:prolog_test/data/repository/models/tire_model.dart';
import 'package:prolog_test/utils/constants.dart';

class TireItemWidget extends StatelessWidget {
  final TireModel tire;
  final VoidCallback onPressed;

  const TireItemWidget({
    super.key,
    required this.tire,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
          width: 40,
          height: 40,
          alignment: Alignment.center,
          child: Image.asset(
            width: 24,
            height: 24,
            PrologConstants.tireImage,
            alignment: Alignment.center,
          )),
      title: Text('Serial: ${tire.serialNumber}'),
      subtitle: Text(
        'Empresa: ${tire.companyGroupName} - ${tire.branchOfficeName}',
        style: const TextStyle(color: Colors.grey),
      ),
      trailing: tire.newTire
          ? const Text(
              'Novo',
              style: TextStyle(color: Colors.green),
            )
          : const Text(
              'Usado',
              style: TextStyle(color: Colors.grey),
            ),
      onTap: onPressed,
    );
  }
}
