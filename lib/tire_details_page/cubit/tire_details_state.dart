import 'package:equatable/equatable.dart';
import 'package:prolog_test/data/repository/models/tire_model.dart';

class TireDetailsState extends Equatable {
  final TireModel? tire;
  final bool isLoading;

  const TireDetailsState({this.tire, required this.isLoading});

  factory TireDetailsState.initial() => const TireDetailsState(isLoading: true);

  @override
  List<Object?> get props => [tire, isLoading];

  TireDetailsState copyWith({
    TireModel? tire,
    bool? isLoading,
  }) {
    return TireDetailsState(
      tire: tire ?? this.tire,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
