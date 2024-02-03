// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class DisposalModel {
  final int disposalReasonId;
  final List disposalImagesUrl;

  DisposalModel(
    this.disposalReasonId,
    this.disposalImagesUrl,
  );

  DisposalModel copyWith({
    int? disposalReasonId,
    List? disposalImagesUrl,
  }) {
    return DisposalModel(
      disposalReasonId ?? this.disposalReasonId,
      disposalImagesUrl ?? this.disposalImagesUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disposalReasonId': disposalReasonId,
      'disposalImagesUrl': disposalImagesUrl,
    };
  }

  factory DisposalModel.fromMap(Map<String, dynamic> map) {
    return DisposalModel(
        map['disposalReasonId'] as int,
        List.from(
          (map['disposalImagesUrl'] as List),
        ));
  }

  String toJson() => json.encode(toMap());

  factory DisposalModel.fromJson(String source) =>
      DisposalModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'DisposalModel(disposalReasonId: $disposalReasonId, disposalImagesUrl: $disposalImagesUrl)';

  @override
  bool operator ==(covariant DisposalModel other) {
    if (identical(this, other)) return true;

    return other.disposalReasonId == disposalReasonId &&
        listEquals(other.disposalImagesUrl, disposalImagesUrl);
  }

  @override
  int get hashCode => disposalReasonId.hashCode ^ disposalImagesUrl.hashCode;
}
