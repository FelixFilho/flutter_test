// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class InstalledModel {
  final int vehicleId;
  final String licensePlate;
  final String? fleetId;
  final int installedPosition;

  InstalledModel(
    this.vehicleId,
    this.licensePlate,
    this.fleetId,
    this.installedPosition,
  );

  InstalledModel copyWith({
    int? vehicleId,
    String? licensePlate,
    String? fleetId,
    int? installedPosition,
  }) {
    return InstalledModel(
      vehicleId ?? this.vehicleId,
      licensePlate ?? this.licensePlate,
      fleetId ?? this.fleetId,
      installedPosition ?? this.installedPosition,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vehicleId': vehicleId,
      'licensePlate': licensePlate,
      'fleetId': fleetId,
      'installedPosition': installedPosition,
    };
  }

  factory InstalledModel.fromMap(Map<String, dynamic> map) {
    return InstalledModel(
      map['vehicleId'] as int,
      map['licensePlate'] as String,
      map['fleetId'] != null ? map['fleetId'] as String : null,
      map['installedPosition'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory InstalledModel.fromJson(String source) =>
      InstalledModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'InstalledModel(vehicleId: $vehicleId, licensePlate: $licensePlate, fleetId: $fleetId, installedPosition: $installedPosition)';
  }

  @override
  bool operator ==(covariant InstalledModel other) {
    if (identical(this, other)) return true;

    return other.vehicleId == vehicleId &&
        other.licensePlate == licensePlate &&
        other.fleetId == fleetId &&
        other.installedPosition == installedPosition;
  }

  @override
  int get hashCode {
    return vehicleId.hashCode ^
        licensePlate.hashCode ^
        fleetId.hashCode ^
        installedPosition.hashCode;
  }
}
