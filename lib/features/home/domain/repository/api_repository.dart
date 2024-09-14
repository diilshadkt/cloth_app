import 'package:cloth_app/features/home/domain/entity/api_entity.dart';

abstract class ApiRepository {
  Future<List<ApiEntity>> getData();
}
