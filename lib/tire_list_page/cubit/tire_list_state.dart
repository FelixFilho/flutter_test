// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:prolog_test/data/models/tire_model.dart';

class TireListState extends Equatable {
  final List<TireModel> tireList;
  final int pageNumber;
  final bool lastPage;
  final bool isLoading;
  final bool isLoadingMore;

  const TireListState({
    required this.tireList,
    required this.pageNumber,
    required this.lastPage,
    required this.isLoadingMore,
    required this.isLoading,
  });

  factory TireListState.initial() => const TireListState(
        tireList: [],
        pageNumber: 0,
        lastPage: false,
        isLoadingMore: false,
        isLoading: true,
      );

  @override
  List<Object?> get props => [
        tireList,
        pageNumber,
        lastPage,
        isLoadingMore,
        isLoading,
      ];

  TireListState copyWith({
    List<TireModel>? tireList,
    int? pageNumber,
    bool? lastPage,
    bool? isLoading,
    bool? isLoadingMore,
  }) {
    return TireListState(
      tireList: tireList ?? this.tireList,
      pageNumber: pageNumber ?? this.pageNumber,
      lastPage: lastPage ?? this.lastPage,
      isLoading: isLoading ?? this.isLoading,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
    );
  }
}
