import 'package:dartz/dartz.dart';
import 'package:kmsuit_app/core/errors/failure.dart';
import 'package:kmsuit_app/feature/third/domain/entity/pagination_entity.dart';
import 'package:kmsuit_app/feature/third/domain/repository/repository.dart';

class GetUsersUsecase {
  final Repository _repository;
  GetUsersUsecase(this._repository);

  Future<Either<Failure, PaginationEntity>> call(
          {required int page, required int perPage}) =>
      _repository.getUserList(page: page, perPage: perPage);
}
