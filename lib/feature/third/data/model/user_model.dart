// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kmsuit_app/feature/third/domain/entity/user_entity.dart';
part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    @JsonKey(name: 'id') @Default(0) int id,
    @JsonKey(name: 'email') @Default("") String email,
    @JsonKey(name: 'first_name') @Default("") String firstName,
    @JsonKey(name: 'last_name') @Default("") String lastName,
    @JsonKey(name: "avatar") @Default("") String avatar,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, Object?> json) =>
      _$UserModelFromJson(json);
}

extension UserExtension on UserModel {
  UserEntity toDomain() => UserEntity(
      id: id,
      email: email,
      firstName: firstName,
      lastName: lastName,
      avatar: avatar);
}
