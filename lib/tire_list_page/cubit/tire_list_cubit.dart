import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prolog_test/data/repository/interface/tire_repository_interface.dart';
import 'package:prolog_test/tire_list_page/cubit/tire_list_state.dart';

class TireListCubit extends Cubit<TireListState> {
  final ITireRepository _repository;
  final int _pageSize = 20;

  TireListCubit({required ITireRepository repository})
      : _repository = repository,
        super(TireListState.initial());

  Future<void> getTires() async {
    emit(state.copyWith(isLoading: true));

    final tireListWithPagination =
        await _repository.getTires(pageNumber: 0, pageSize: _pageSize);
    emit(state.copyWith(
      isLoading: false,
      lastPage: tireListWithPagination.lastPage,
      pageNumber: tireListWithPagination.pageNumber,
      tireList: tireListWithPagination.tireList,
    ));
  }

  Future<void> getMoreTires() async {
    if (!state.isLoading && !state.isLoadingMore && !state.lastPage) {
      emit(state.copyWith(isLoadingMore: true));

      final tireListWithPagination = await _repository.getTires(
        pageNumber: state.pageNumber + 1,
        pageSize: _pageSize,
      );
      final finalTireList = [
        ...state.tireList,
        ...tireListWithPagination.tireList
      ];

      final pageNumber = tireListWithPagination.tireList.isEmpty
          ? state.pageNumber
          : tireListWithPagination.pageNumber;

      emit(state.copyWith(
        isLoading: false,
        isLoadingMore: false,
        lastPage: tireListWithPagination.lastPage,
        pageNumber: pageNumber,
        tireList: finalTireList,
      ));
    }
  }
}
