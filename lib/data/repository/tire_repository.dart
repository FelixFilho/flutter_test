import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:prolog_test/data/repository/interface/tire_repository_interface.dart';
import 'package:prolog_test/data/repository/models/tire_model.dart';
import 'package:prolog_test/utils/constants.dart';

class TireRepository implements ITireRepository {
  final getTiresPath = '/api/v3/tires';
  getTireByIdPath(int id) => '/api/v3/tires/$id';

  @override
  Future<List<TireModel>?> getTires() async {
    try {
      final response = await Dio(BaseOptions(
          baseUrl: PrologConstants.baseUrl,
          contentType: 'application/json',
          queryParameters: {
            'branchOfficesId': 215,
            'pageSize': 100,
            'pageNumber': 1
          },
          headers: {
            'x-prolog-api-token':
                'ePTC2XrkY34WKUCXq48fTxrLCzdV3M35MNpCfBYavabwwY9BJXg',
            'companyId': 3,
            'branchOffsetId': 215,
          })).get(getTiresPath);

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
  Future<TireModel?> getTireById({required int id}) async {
    try {
      final response = await Dio(BaseOptions(
          baseUrl: PrologConstants.baseUrl,
          contentType: 'application/json',
          queryParameters: {
            'branchOfficesId': 215,
            'pageSize': 100,
            'pageNumber': 1
          },
          headers: {
            'x-prolog-api-token':
                'ePTC2XrkY34WKUCXq48fTxrLCzdV3M35MNpCfBYavabwwY9BJXg',
            'companyId': 3,
            'branchOffsetId': 215,
          })).get(getTireByIdPath(id));

      final tire = TireModel.fromMap(response.data);

      log(response.data.toString());

      return tire;
    } catch (e) {
      log(e.toString());
      return null;
    }
  }
}
