// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class TireSize {
  final num id;
  final num height;
  final num width;
  final num rim;

  TireSize(
    this.id,
    this.height,
    this.width,
    this.rim,
  );

  TireSize copyWith({
    num? id,
    num? height,
    num? width,
    num? rim,
  }) {
    return TireSize(
      id ?? this.id,
      height ?? this.height,
      width ?? this.width,
      rim ?? this.rim,
    );
  }

  factory TireSize.fromMap(Map<String, dynamic> map) {
    return TireSize(
      map['id'] as num,
      map['height'] as num,
      map['width'] as num,
      map['rim'] as num,
    );
  }

  factory TireSize.fromJson(String source) =>
      TireSize.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'TireSize(id: $id, height: $height, width: $width, rim: $rim)';
  }

  @override
  bool operator ==(covariant TireSize other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.height == height &&
        other.width == width &&
        other.rim == rim;
  }

  @override
  int get hashCode {
    return id.hashCode ^ height.hashCode ^ width.hashCode ^ rim.hashCode;
  }
}
