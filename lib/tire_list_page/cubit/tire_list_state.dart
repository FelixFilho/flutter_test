import 'package:equatable/equatable.dart';
import 'package:prolog_test/data/models/tire_model.dart';

class TireListState extends Equatable {
  final List<TireModel>? tires;
  final bool isLoading;

  const TireListState({this.tires, required this.isLoading});

  factory TireListState.initial() => const TireListState(isLoading: true);

  @override
  List<Object?> get props => [tires, isLoading];

  TireListState copyWith({
    List<TireModel>? tires,
    bool? isLoading,
  }) {
    return TireListState(
      tires: tires ?? this.tires,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
