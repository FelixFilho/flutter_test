// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class MakeModel {
  final int id;
  final String name;

  MakeModel(
    this.id,
    this.name,
  );

  MakeModel copyWith({
    int? id,
    String? name,
  }) {
    return MakeModel(
      id ?? this.id,
      name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    };
  }

  factory MakeModel.fromMap(Map<String, dynamic> map) {
    return MakeModel(
      map['id'] as int,
      map['name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

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
