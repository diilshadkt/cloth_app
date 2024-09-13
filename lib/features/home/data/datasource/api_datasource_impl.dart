import 'package:cloth_app/core/constants/api_constants.dart';
import 'package:cloth_app/features/home/data/datasource/api_datasource.dart';
import 'package:cloth_app/features/home/data/model/api_model.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'api_datasource_impl.g.dart';

class ApiDatasourceImpl implements ApiDatasource {
  static final dio = Dio();
  final token = ApiConstants.token;
  final apiLink = ApiConstants.getApiLink;
  @override
  Future<ApiModel> getData() async {
    dio.options.headers["Authorization"] = "Bearer$token";
    Response response = await dio.get(apiLink);
    return ApiModel.fromJson(response.data);
  }
}

@riverpod
ApiDatasource apiDatasource(ApiDatasourceRef ref) {
  return ApiDatasourceImpl();
}
