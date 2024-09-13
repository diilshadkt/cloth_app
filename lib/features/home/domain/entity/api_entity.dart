import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_entity.freezed.dart';

@freezed
class ApiEntity with _$ApiEntity {
  factory ApiEntity({
    required int id,
    required String title,
    required double price,
    required String description,
    required String category,
    required String image,
    required RatingEntity rating,
  }) = _ApiEntity;
}

@freezed
class RatingEntity with _$RatingEntity {
  const factory RatingEntity({
    required double rate,
    required int count,
  }) = _RatingEntity;
}
