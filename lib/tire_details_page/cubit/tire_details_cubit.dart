import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prolog_test/data/repository/interface/tire_repository_interface.dart';
import 'package:prolog_test/tire_details_page/cubit/tire_details_state.dart';

class TireDetailsCubit extends Cubit<TireDetailsState> {
  final ITireRepository _repository;

  TireDetailsCubit({required ITireRepository repository})
      : _repository = repository,
        super(TireDetailsState.initial());

  Future<void> getTireById(int id) async {
    emit(state.copyWith(isLoading: true));

    final result = await _repository.getTireById(id: id);

    emit(state.copyWith(tire: result, isLoading: false));
  }
}
