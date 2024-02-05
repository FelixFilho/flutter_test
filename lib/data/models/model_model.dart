// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ModelModel {
  final num id;
  final String name;
  final String? additionalId;
  final num groovesQuantity;
  final num treadDepth;

  ModelModel(
    this.id,
    this.name,
    this.additionalId,
    this.groovesQuantity,
    this.treadDepth,
  );

  ModelModel copyWith({
    num? id,
    String? name,
    String? additionalId,
    num? groovesQuantity,
    num? treadDepth,
  }) {
    return ModelModel(
      id ?? this.id,
      name ?? this.name,
      additionalId ?? this.additionalId,
      groovesQuantity ?? this.groovesQuantity,
      treadDepth ?? this.treadDepth,
    );
  }

  factory ModelModel.fromMap(Map<String, dynamic> map) {
    return ModelModel(
      map['id'] as num,
      map['name'] as String,
      map['additionalId'] != null ? map['additionalId'] as String : null,
      map['groovesQuantity'] as num,
      map['treadDepth'] as num,
    );
  }

  factory ModelModel.fromJson(String source) =>
      ModelModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ModelModel(id: $id, name: $name, additionalId: $additionalId, groovesQuantity: $groovesQuantity, treadDepth: $treadDepth)';
  }

  @override
  bool operator ==(covariant ModelModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.additionalId == additionalId &&
        other.groovesQuantity == groovesQuantity &&
        other.treadDepth == treadDepth;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        additionalId.hashCode ^
        groovesQuantity.hashCode ^
        treadDepth.hashCode;
  }
}
