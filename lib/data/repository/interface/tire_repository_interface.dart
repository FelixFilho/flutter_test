import 'package:prolog_test/data/models/tire_model.dart';
import 'package:prolog_test/data/repository/models/pagination_model.dart';

abstract class ITireRepository {
  Future<TireListWithPagination> getTires({
    required int pageSize,
    required int pageNumber,
  });

  Future<TireModel?> getTireById({required num id});
}
