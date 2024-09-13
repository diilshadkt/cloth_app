import 'package:cloth_app/features/home/data/model/api_model.dart';

abstract class ApiDatasource {
  Future<ApiModel> getData();
}
