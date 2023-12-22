import 'package:kmsuit_app/core/network/dio_client.dart';
import 'package:kmsuit_app/core/network/endpoints.dart';
import 'package:kmsuit_app/feature/third/data/model/pagination_model.dart';

sealed class RemoteDataSource {
  Future<PaginationModel> getUserList(
      {required int page, required int perPage});
}

class RemoteDataSourceImpl extends RemoteDataSource {
  final DioClient _dioClient;
  RemoteDataSourceImpl(this._dioClient);
  @override
  Future<PaginationModel> getUserList(
      {required int page, required int perPage}) async {
    final response = await _dioClient
        .get(usersList, queryParameters: {'page': page, 'per_page': perPage});

    return PaginationModel.fromJson(response.data);
  }
}
