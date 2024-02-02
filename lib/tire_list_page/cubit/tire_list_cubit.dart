import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prolog_test/data/repository/interface/tire_repository_interface.dart';
import 'package:prolog_test/tire_list_page/cubit/tire_list_state.dart';

class TireListCubit extends Cubit<TireListState> {
  final ITireRepository _repository;

  TireListCubit({required ITireRepository repository})
      : _repository = repository,
        super(TireListState.initial());

  Future<void> getTires() async {
    emit(state.copyWith(isLoading: true));

    final result = await _repository.getTires();
    emit(state.copyWith(tires: result, isLoading: false));
  }
}
