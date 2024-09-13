import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'api_model.freezed.dart';
part 'api_model.g.dart';

List<ApiModel> apiModelFromJson(String str) => List<ApiModel>.from(json.decode(str).map((x) => ApiModel.fromJson(x)));

String apiModelToJson(List<ApiModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class ApiModel with _$ApiModel {
    const factory ApiModel({
        required int id,
        required String title,
        required double price,
        required String description,
        required String category,
        required String image,
        required Rating rating,
    }) = _ApiModel;

    factory ApiModel.fromJson(Map<String, dynamic> json) => _$ApiModelFromJson(json);
}
@freezed
class Rating with _$Rating {
    const factory Rating({
        required double rate,
        required int count,
    }) = _Rating;

    factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);
}