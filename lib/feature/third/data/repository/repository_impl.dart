import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:kmsuit_app/core/errors/exception.dart';
import 'package:kmsuit_app/core/errors/failure.dart';
import 'package:kmsuit_app/core/network/network.dart';
import 'package:kmsuit_app/feature/third/data/data_source/remote_data_source.dart';
import 'package:kmsuit_app/feature/third/data/model/pagination_model.dart';
import 'package:kmsuit_app/feature/third/domain/entity/pagination_entity.dart';
import 'package:kmsuit_app/feature/third/domain/repository/repository.dart';

class RepositoryImpl extends Repository {
  final RemoteDataSource _remoteDataSource;
  final NetworkInfo _networkInfo;
  RepositoryImpl(this._remoteDataSource, this._networkInfo);

  @override
  Future<Either<Failure, PaginationEntity>> getUserList(
      {required int page, required int perPage}) async {
    try {
      final connectionActive = await _networkInfo.isConnected();
      if (connectionActive) {
        final response =
            await _remoteDataSource.getUserList(page: page, perPage: perPage);
        return Right(response.toDomain());
      } else {
        throw NetworkException("Can't connect to the internet.");
      }
    } on DioException catch (e) {
      final message = e.response?.data['message'];
      return Left(ServerFailure(message ?? "Something went wrong"));
    } on NetworkException catch (_) {
      return const Left(NetworkFailure("No internet connection"));
    } catch (_) {
      return const Left(ParsingFailure("Failed to parse data"));
    }
  }
}
