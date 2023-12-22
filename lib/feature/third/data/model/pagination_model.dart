// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kmsuit_app/feature/third/data/model/user_model.dart';
import 'package:kmsuit_app/feature/third/domain/entity/pagination_entity.dart';
import 'package:kmsuit_app/feature/third/domain/entity/user_entity.dart';
part 'pagination_model.freezed.dart';
part 'pagination_model.g.dart';

@freezed
class PaginationModel with _$PaginationModel {
  const factory PaginationModel({
    @JsonKey(name: 'page') @Default(0) int page,
    @JsonKey(name: 'per_page') @Default(0) int perPage,
    @JsonKey(name: 'total') @Default(0) int total,
    @JsonKey(name: 'total_pages') @Default(0) int totalPages,
    @JsonKey(name: 'data') @Default([]) List<UserModel> data,
  }) = _PaginationModel;

  factory PaginationModel.fromJson(Map<String, Object?> json) =>
      _$PaginationModelFromJson(json);
}

extension PaginationExtension on PaginationModel {
  PaginationEntity toDomain() {
    final List<UserEntity> userEntities = [];
    for (var userModel in data) {
      userEntities.add(userModel.toDomain());
    }

    return PaginationEntity(
      page: page,
      perPage: perPage,
      total: total,
      totalPages: totalPages,
      data: userEntities,
    );
  }
}
