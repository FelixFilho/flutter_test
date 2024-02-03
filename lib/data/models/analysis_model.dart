// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class AnalysisModel {
  final int recapperId;
  final String recapperName;
  final String recapperPickUpId;

  AnalysisModel(
    this.recapperId,
    this.recapperName,
    this.recapperPickUpId,
  );

  AnalysisModel copyWith({
    int? recapperId,
    String? recapperName,
    String? recapperPickUpId,
  }) {
    return AnalysisModel(
      recapperId ?? this.recapperId,
      recapperName ?? this.recapperName,
      recapperPickUpId ?? this.recapperPickUpId,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recapperId': recapperId,
      'recapperName': recapperName,
      'recapperPickUpId': recapperPickUpId,
    };
  }

  factory AnalysisModel.fromMap(Map<String, dynamic> map) {
    return AnalysisModel(
      map['recapperId'] as int,
      map['recapperName'] as String,
      map['recapperPickUpId'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AnalysisModel.fromJson(String source) =>
      AnalysisModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'AnalysisModel(recapperId: $recapperId, recapperName: $recapperName, recapperPickUpId: $recapperPickUpId)';

  @override
  bool operator ==(covariant AnalysisModel other) {
    if (identical(this, other)) return true;

    return other.recapperId == recapperId &&
        other.recapperName == recapperName &&
        other.recapperPickUpId == recapperPickUpId;
  }

  @override
  int get hashCode =>
      recapperId.hashCode ^ recapperName.hashCode ^ recapperPickUpId.hashCode;
}
