// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:prolog_test/data/models/make_model.dart';
import 'package:prolog_test/data/models/model_model.dart';

class CurrentRetreadModel {
  final MakeModel make;
  final ModelModel model;
  final num retreadCost;

  CurrentRetreadModel(
    this.make,
    this.model,
    this.retreadCost,
  );

  CurrentRetreadModel copyWith({
    MakeModel? make,
    ModelModel? model,
    num? retreadCost,
  }) {
    return CurrentRetreadModel(
      make ?? this.make,
      model ?? this.model,
      retreadCost ?? this.retreadCost,
    );
  }

  factory CurrentRetreadModel.fromMap(Map<String, dynamic> map) {
    return CurrentRetreadModel(
      MakeModel.fromMap(map['make'] as Map<String, dynamic>),
      ModelModel.fromMap(map['model'] as Map<String, dynamic>),
      map['retreadCost'] as num,
    );
  }

  factory CurrentRetreadModel.fromJson(String source) =>
      CurrentRetreadModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'CurrentRetreadModel(make: $make, model: $model, retreadCost: $retreadCost)';

  @override
  bool operator ==(covariant CurrentRetreadModel other) {
    if (identical(this, other)) return true;

    return other.make == make &&
        other.model == model &&
        other.retreadCost == retreadCost;
  }

  @override
  int get hashCode => make.hashCode ^ model.hashCode ^ retreadCost.hashCode;
}
