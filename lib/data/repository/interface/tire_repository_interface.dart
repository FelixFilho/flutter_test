import 'package:prolog_test/data/repository/models/tire_model.dart';

abstract class ITireRepository {
  Future<List<TireModel>?> getTires();
  Future<TireModel?> getTireById({required int id});
}
