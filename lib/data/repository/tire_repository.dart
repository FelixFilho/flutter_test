import 'dart:convert';
import 'dart:developer';
import 'package:prolog_test/data/client/dio.dart';
import 'package:prolog_test/data/repository/interface/tire_repository_interface.dart';
import 'package:prolog_test/data/repository/models/pagination_model.dart';
import 'package:prolog_test/data/models/tire_model.dart';
import 'package:prolog_test/utils/constants.dart';

class TireRepository implements ITireRepository {
  final DioClient dioClient;

  TireRepository(this.dioClient);

  @override
  Future<TireListWithPagination> getTires({
    required int pageSize,
    required int pageNumber,
  }) async {
    try {
      final response = await dioClient.dio!.get(
        PrologConstants.getTiresPath,
        queryParameters: {
          'branchOfficesId': PrologConstants.branchOffsetId,
          'pageSize': pageSize,
          'pageNumber': pageNumber,
        },
      );

      if (response.statusCode == 200) {
        final tireListWithPagination =
            TireListWithPagination.fromJson(jsonEncode(response.data));
        log(response.data.toString());

        return tireListWithPagination;
      } else {
        log(response.toString());
        return TireListWithPagination.empty();
      }
    } catch (e) {
      log(e.toString());
      return TireListWithPagination.empty();
    }
  }

  @override
  Future<TireModel?> getTireById({required num id}) async {
    try {
      final response = await dioClient.dio!.get(
        PrologConstants.getTireByIdPath + id.toString(),
      );

      if (response.statusCode == 200) {
        final tire = TireModel.fromMap(response.data);

        log(response.data.toString());

        return tire;
      } else {
        log(response.toString());
        return null;
      }
    } catch (e) {
      log(e.toString());
      return null;
    }
  }
}
