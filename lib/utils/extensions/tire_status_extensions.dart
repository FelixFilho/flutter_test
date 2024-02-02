import 'package:prolog_test/utils/enums/tire_status_type.dart';

extension TireStatus on TireStatusType {
  String tireStatusToString() {
    switch (this) {
      case TireStatusType.inventory:
        return 'Inventário';
      case TireStatusType.analysis:
        return 'Análise';
      case TireStatusType.installed:
        return 'Instalado';
      case TireStatusType.disposal:
        return 'Descartado';
      default:
        return 'Desconhecido';
    }
  }
}

extension TireStatusExtension on String {
  TireStatusType toTireStatusType() {
    switch (this) {
      case 'INVENTORY':
        return TireStatusType.inventory;
      case 'ANALYSIS':
        return TireStatusType.analysis;
      case 'INSTALLED':
        return TireStatusType.installed;
      case 'DISPOSAL':
        return TireStatusType.disposal;
      default:
        return TireStatusType.unknown;
    }
  }
}
