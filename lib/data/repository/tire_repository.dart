import 'dart:developer';
import 'package:prolog_test/data/client/dio.dart';
import 'package:prolog_test/data/repository/tire_repository_interface.dart';
import 'package:prolog_test/data/models/tire_model.dart';
import 'package:prolog_test/utils/constants.dart';

class TireRepository implements ITireRepository {
  final DioClient dioClient;

  TireRepository(this.dioClient);

  @override
  Future<List<TireModel>?> getTires() async {
    try {
      final response = await dioClient.dio!.get(
        PrologConstants.getTiresPath,
        queryParameters: {
          'branchOfficesId': PrologConstants.branchOffsetId,
          'pageSize': 100,
          'pageNumber': 1
        },
      );

      final contentMap = response.data['content'];
      final tireList = (contentMap as List)
          .map((tireMap) => TireModel.fromMap(tireMap))
          .toList();
      log(response.data.toString());

      return tireList;
    } catch (e) {
      log(e.toString());
      return null;
    }
  }

  @override
  Future<TireModel?> getTireById({required num id}) async {
    try {
      final response = await dioClient.dio!.get(
        PrologConstants.getTireByIdPath + id.toString(),
      );

      final tire = TireModel.fromMap(response.data);

      log(response.data.toString());

      return tire;
    } catch (e) {
      log(e.toString());
      return null;
    }
  }
}
