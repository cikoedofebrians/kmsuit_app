import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kmsuit_app/feature/third/domain/entity/user_entity.dart';

part 'pagination_entity.freezed.dart';

@freezed
class PaginationEntity with _$PaginationEntity {
  const factory PaginationEntity({
    required int page,
    required int perPage,
    required int total,
    required int totalPages,
    required List<UserEntity> data,
  }) = _PaginationEntity;
}
