// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class MakeModel {
  final num id;
  final String name;

  MakeModel(
    this.id,
    this.name,
  );

  MakeModel copyWith({
    num? id,
    String? name,
  }) {
    return MakeModel(
      id ?? this.id,
      name ?? this.name,
    );
  }

  factory MakeModel.fromMap(Map<String, dynamic> map) {
    return MakeModel(
      map['id'] as num,
      map['name'] as String,
    );
  }

  factory MakeModel.fromJson(String source) =>
      MakeModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'MakeModel(id: $id, name: $name)';

  @override
  bool operator ==(covariant MakeModel other) {
    if (identical(this, other)) return true;

    return other.id == id && other.name == name;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode;
}
