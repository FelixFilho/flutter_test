import 'package:prolog_test/data/models/tire_model.dart';

abstract class ITireRepository {
  Future<List<TireModel>?> getTires();
  Future<TireModel?> getTireById({required int id});
}
