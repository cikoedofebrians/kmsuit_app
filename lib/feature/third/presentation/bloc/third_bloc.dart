import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kmsuit_app/feature/third/domain/entity/user_entity.dart';
import 'package:kmsuit_app/feature/third/domain/usecase/get_users_usecase.dart';

part 'third_event.dart';
part 'third_state.dart';
part 'third_bloc.freezed.dart';

class ThirdBloc extends Bloc<ThirdEvent, ThirdState> {
  final GetUsersUsecase _getUsersUsecase;
  ThirdBloc(this._getUsersUsecase) : super(const ThirdState()) {
    on<FetchUserEvent>(_onFetchUsers);
  }

  int currentPage = 1;
  int perPage = 10;
  int totalData = 0;
  bool hasReachedMax = false;

  void _onFetchUsers(FetchUserEvent event, Emitter<ThirdState> emit) async {
    if (state.loadMoreFetchStatus.isLoading ||
        state.loadMoreFetchStatus.isLoading) return;
    if (event.isLoadMore && !hasReachedMax) {
      emit(state.copyWith(loadMoreFetchStatus: FetchStatus.loading));
    }

    if (!event.isLoadMore) {
      currentPage = 1;
      totalData = 0;
      hasReachedMax = false;
      emit(state.copyWith(fetchStatus: FetchStatus.loading));
    }

    final result =
        await _getUsersUsecase.call(page: currentPage, perPage: perPage);

    result.fold((l) {
      if (!event.isLoadMore) {
        emit(state.copyWith(
            fetchStatus: FetchStatus.failed, message: l.message));
      } else {
        emit(state.copyWith(
            loadMoreFetchStatus: FetchStatus.failed,
            loadMoreMessage: l.message));
      }
    }, (r) {
      if (event.isLoadMore) {
        emit(state.copyWith(
            loadMoreFetchStatus: FetchStatus.loaded,
            userList: [...state.userList, ...r.data]));
      } else {
        emit(state.copyWith(fetchStatus: FetchStatus.loaded, userList: r.data));
      }
      currentPage += 1;
      totalData += r.data.length;

      if (totalData == r.total) {
        hasReachedMax = true;
      }
    });
  }
}
