import 'package:dartz/dartz.dart';
import 'package:kmsuit_app/core/errors/failure.dart';
import 'package:kmsuit_app/feature/third/domain/entity/pagination_entity.dart';

abstract class Repository {
  Future<Either<Failure, PaginationEntity>> getUserList(
      {required int page, required int perPage});
}
