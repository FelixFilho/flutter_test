// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:prolog_test/data/models/analysis_model.dart';
import 'package:prolog_test/data/models/current_retread_model.dart';
import 'package:prolog_test/data/models/disposal_model.dart';
import 'package:prolog_test/data/models/installed_model.dart';
import 'package:prolog_test/data/models/make_model.dart';
import 'package:prolog_test/data/models/model_model.dart';
import 'package:prolog_test/data/models/tire_size_model.dart';
import 'package:prolog_test/utils/enums/tire_status_type.dart';
import 'package:prolog_test/utils/extensions/tire_status_extensions.dart';

class TireModel {
  final int id;
  final String serialNumber;
  final String? additionalId;
  final int companyGroupId;
  final String companyGroupName;
  final int? branchOffsetId;
  final String branchOfficeName;
  final int timesRetreaded;
  final int maxRetreadsExpected;
  final double? recommendedPressure;
  final double? currentPressure;
  final double? middleInnerTreadDepth;
  final double? outerTreadDepth;
  final double? middleOuterTreadDepth;
  final double? innerTreadDepth;
  final String dot;
  final num purchaseCost;
  final bool newTire;
  final TireStatusType status;
  final String createdAt;
  final TireSize tireSize;
  final MakeModel make;
  final ModelModel model;
  final CurrentRetreadModel? currentRetread;
  final InstalledModel? installed;
  final DisposalModel? disposal;
  final AnalysisModel? analysis;

  TireModel(
    this.id,
    this.serialNumber,
    this.additionalId,
    this.companyGroupId,
    this.companyGroupName,
    this.branchOffsetId,
    this.branchOfficeName,
    this.timesRetreaded,
    this.maxRetreadsExpected,
    this.recommendedPressure,
    this.currentPressure,
    this.middleInnerTreadDepth,
    this.outerTreadDepth,
    this.middleOuterTreadDepth,
    this.innerTreadDepth,
    this.dot,
    this.purchaseCost,
    this.newTire,
    this.status,
    this.createdAt,
    this.tireSize,
    this.make,
    this.model,
    this.currentRetread,
    this.installed,
    this.disposal,
    this.analysis,
  );

  TireModel copyWith({
    int? id,
    String? serialNumber,
    String? additionalId,
    int? companyGroupId,
    String? companyGroupName,
    int? branchOffsetId,
    String? branchOfficeName,
    int? timesRetreaded,
    int? maxRetreadsExpected,
    double? recommendedPressure,
    double? currentPressure,
    double? middleInnerTreadDepth,
    double? outerTreadDepth,
    double? middleOuterTreadDepth,
    double? innerTreadDepth,
    String? dot,
    num? purchaseCost,
    bool? newTire,
    TireStatusType? status,
    String? createdAt,
    TireSize? tireSize,
    MakeModel? make,
    ModelModel? model,
    CurrentRetreadModel? currentRetread,
    InstalledModel? installed,
    DisposalModel? disposal,
    AnalysisModel? analysis,
  }) {
    return TireModel(
      id ?? this.id,
      serialNumber ?? this.serialNumber,
      additionalId ?? this.additionalId,
      companyGroupId ?? this.companyGroupId,
      companyGroupName ?? this.companyGroupName,
      branchOffsetId ?? this.branchOffsetId,
      branchOfficeName ?? this.branchOfficeName,
      timesRetreaded ?? this.timesRetreaded,
      maxRetreadsExpected ?? this.maxRetreadsExpected,
      recommendedPressure ?? this.recommendedPressure,
      currentPressure ?? this.currentPressure,
      middleInnerTreadDepth ?? this.middleInnerTreadDepth,
      outerTreadDepth ?? this.outerTreadDepth,
      middleOuterTreadDepth ?? this.middleOuterTreadDepth,
      innerTreadDepth ?? this.innerTreadDepth,
      dot ?? this.dot,
      purchaseCost ?? this.purchaseCost,
      newTire ?? this.newTire,
      status ?? this.status,
      createdAt ?? this.createdAt,
      tireSize ?? this.tireSize,
      make ?? this.make,
      model ?? this.model,
      currentRetread ?? this.currentRetread,
      installed ?? this.installed,
      disposal ?? this.disposal,
      analysis ?? this.analysis,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'serialNumber': serialNumber,
      'additionalId': additionalId,
      'companyGroupId': companyGroupId,
      'companyGroupName': companyGroupName,
      'branchOffsetId': branchOffsetId,
      'branchOfficeName': branchOfficeName,
      'timesRetreaded': timesRetreaded,
      'maxRetreadsExpected': maxRetreadsExpected,
      'recommendedPressure': recommendedPressure,
      'currentPressure': currentPressure,
      'middleInnerTreadDepth': middleInnerTreadDepth,
      'outerTreadDepth': outerTreadDepth,
      'middleOuterTreadDepth': middleOuterTreadDepth,
      'innerTreadDepth': innerTreadDepth,
      'dot': dot,
      'purchaseCost': purchaseCost,
      'newTire': newTire,
      'status': status,
      'createdAt': createdAt,
      'tireSize': tireSize.toMap(),
      'make': make.toMap(),
      'model': model.toMap(),
      'currentRetread': currentRetread?.toMap(),
      'installed': installed?.toMap(),
      'disposal': disposal?.toMap(),
      'analysis': analysis?.toMap(),
    };
  }

  factory TireModel.fromMap(Map<String, dynamic> map) {
    return TireModel(
      map['id'] as int,
      map['serialNumber'] as String,
      map['additionalId'] != null ? map['additionalId'] as String : null,
      map['companyGroupId'] as int,
      map['companyGroupName'] as String,
      map['branchOffsetId'] != null ? map['branchOffsetId'] as int : null,
      map['branchOfficeName'] as String,
      map['timesRetreaded'] as int,
      map['maxRetreadsExpected'] as int,
      map['recommendedPressure'] != null
          ? map['recommendedPressure'] as double
          : null,
      map['currentPressure'] != null ? map['currentPressure'] as double : null,
      map['middleInnerTreadDepth'] != null
          ? map['middleInnerTreadDepth'] as double
          : null,
      map['outerTreadDepth'] != null ? map['outerTreadDepth'] as double : null,
      map['middleOuterTreadDepth'] != null
          ? map['middleOuterTreadDepth'] as double
          : null,
      map['innerTreadDepth'] != null ? map['innerTreadDepth'] as double : null,
      map['dot'] as String,
      map['purchaseCost'] as num,
      map['newTire'] as bool,
      (map['status'] as String).toTireStatusType(),
      map['createdAt'] as String,
      TireSize.fromMap(map['tireSize'] as Map<String, dynamic>),
      MakeModel.fromMap(map['make'] as Map<String, dynamic>),
      ModelModel.fromMap(map['model'] as Map<String, dynamic>),
      map['currentRetread'] != null
          ? CurrentRetreadModel.fromMap(
              map['currentRetread'] as Map<String, dynamic>)
          : null,
      map['installed'] != null
          ? InstalledModel.fromMap(map['installed'] as Map<String, dynamic>)
          : null,
      map['disposal'] != null
          ? DisposalModel.fromMap(map['disposal'] as Map<String, dynamic>)
          : null,
      map['analysis'] != null
          ? AnalysisModel.fromMap(map['analysis'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory TireModel.fromJson(String source) =>
      TireModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'TireModel(id: $id, serialNumber: $serialNumber, additionalId: $additionalId, companyGroupId: $companyGroupId, companyGroupName: $companyGroupName, branchOffsetId: $branchOffsetId, branchOfficeName: $branchOfficeName, timesRetreaded: $timesRetreaded, maxRetreadsExpected: $maxRetreadsExpected, recommendedPressure: $recommendedPressure, currentPressure: $currentPressure, middleInnerTreadDepth: $middleInnerTreadDepth, outerTreadDepth: $outerTreadDepth, middleOuterTreadDepth: $middleOuterTreadDepth, innerTreadDepth: $innerTreadDepth, dot: $dot, purchaseCost: $purchaseCost, newTire: $newTire, status: $status, createdAt: $createdAt, tireSize: $tireSize, make: $make, model: $model, currentRetread: $currentRetread, installed: $installed, disposal: $disposal, analysis: $analysis)';
  }

  @override
  bool operator ==(covariant TireModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.serialNumber == serialNumber &&
        other.additionalId == additionalId &&
        other.companyGroupId == companyGroupId &&
        other.companyGroupName == companyGroupName &&
        other.branchOffsetId == branchOffsetId &&
        other.branchOfficeName == branchOfficeName &&
        other.timesRetreaded == timesRetreaded &&
        other.maxRetreadsExpected == maxRetreadsExpected &&
        other.recommendedPressure == recommendedPressure &&
        other.currentPressure == currentPressure &&
        other.middleInnerTreadDepth == middleInnerTreadDepth &&
        other.outerTreadDepth == outerTreadDepth &&
        other.middleOuterTreadDepth == middleOuterTreadDepth &&
        other.innerTreadDepth == innerTreadDepth &&
        other.dot == dot &&
        other.purchaseCost == purchaseCost &&
        other.newTire == newTire &&
        other.status == status &&
        other.createdAt == createdAt &&
        other.tireSize == tireSize &&
        other.make == make &&
        other.model == model &&
        other.currentRetread == currentRetread &&
        other.installed == installed &&
        other.disposal == disposal &&
        other.analysis == analysis;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        serialNumber.hashCode ^
        additionalId.hashCode ^
        companyGroupId.hashCode ^
        companyGroupName.hashCode ^
        branchOffsetId.hashCode ^
        branchOfficeName.hashCode ^
        timesRetreaded.hashCode ^
        maxRetreadsExpected.hashCode ^
        recommendedPressure.hashCode ^
        currentPressure.hashCode ^
        middleInnerTreadDepth.hashCode ^
        outerTreadDepth.hashCode ^
        middleOuterTreadDepth.hashCode ^
        innerTreadDepth.hashCode ^
        dot.hashCode ^
        purchaseCost.hashCode ^
        newTire.hashCode ^
        status.hashCode ^
        createdAt.hashCode ^
        tireSize.hashCode ^
        make.hashCode ^
        model.hashCode ^
        currentRetread.hashCode ^
        installed.hashCode ^
        disposal.hashCode ^
        analysis.hashCode;
  }
}
