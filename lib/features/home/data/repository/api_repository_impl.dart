import 'package:cloth_app/features/home/data/datasource/api_datasource.dart';
import 'package:cloth_app/features/home/domain/entity/api_entity.dart';
import 'package:cloth_app/features/home/domain/repository/api_repository.dart';

class ApiRepositoryImpl implements ApiRepository {
  final ApiDatasource datasource;
  ApiRepositoryImpl({required this.datasource});

  @override
  Future<List<ApiEntity>> getData() async {
    final data = await datasource.getData();
    late List<ApiEntity> results;

    results = [
      for (final result in data)
        ApiEntity(
            id: result.id,
            title: result.title,
            price: result.price,
            description: result.description,
            category: result.category,
            image: result.image,
            rating: result.rating)
    ];
    
  }
}
