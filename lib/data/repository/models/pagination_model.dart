// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:prolog_test/data/models/tire_model.dart';

class TireListWithPagination {
  final int pageSize;
  final int pageNumber;
  final int numberOfElements;
  final bool empty;
  final bool lastPage;
  final List<TireModel> tireList;

  TireListWithPagination({
    required this.pageSize,
    required this.pageNumber,
    required this.numberOfElements,
    required this.empty,
    required this.lastPage,
    required this.tireList,
  });

  factory TireListWithPagination.empty() => TireListWithPagination(
        pageSize: 0,
        pageNumber: 0,
        numberOfElements: 0,
        empty: true,
        lastPage: true,
        tireList: [],
      );

  TireListWithPagination copyWith({
    int? pageSize,
    int? pageNumber,
    int? numberOfElements,
    bool? empty,
    bool? lastPage,
    List<TireModel>? tireList,
  }) {
    return TireListWithPagination(
      pageSize: pageSize ?? this.pageSize,
      pageNumber: pageNumber ?? this.pageNumber,
      numberOfElements: numberOfElements ?? this.numberOfElements,
      empty: empty ?? this.empty,
      lastPage: lastPage ?? this.lastPage,
      tireList: tireList ?? this.tireList,
    );
  }

  factory TireListWithPagination.fromMap(Map<String, dynamic> map) {
    return TireListWithPagination(
      pageSize: map['pageSize'] as int,
      pageNumber: map['pageNumber'] as int,
      numberOfElements: map['numberOfElements'] as int,
      empty: map['empty'] as bool,
      lastPage: map['lastPage'] as bool,
      tireList: List<TireModel>.from(
        (map['content'] as List<dynamic>).map<TireModel>(
          (x) => TireModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  factory TireListWithPagination.fromJson(String source) =>
      TireListWithPagination.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'TireListWithPagination(pageSize: $pageSize, pageNumber: $pageNumber, numberOfElements: $numberOfElements, empty: $empty, lastPage: $lastPage, tireList: $tireList)';
  }

  @override
  bool operator ==(covariant TireListWithPagination other) {
    if (identical(this, other)) return true;

    return other.pageSize == pageSize &&
        other.pageNumber == pageNumber &&
        other.numberOfElements == numberOfElements &&
        other.empty == empty &&
        other.lastPage == lastPage &&
        listEquals(other.tireList, tireList);
  }

  @override
  int get hashCode {
    return pageSize.hashCode ^
        pageNumber.hashCode ^
        numberOfElements.hashCode ^
        empty.hashCode ^
        lastPage.hashCode ^
        tireList.hashCode;
  }
}
