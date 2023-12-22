part of 'third_bloc.dart';

@freezed
class ThirdState with _$ThirdState {
  const factory ThirdState({
    @Default([]) List<UserEntity> userList,
    @Default(FetchStatus.initial) FetchStatus fetchStatus,
    @Default(FetchStatus.initial) FetchStatus loadMoreFetchStatus,
    @Default("") String message,
    @Default("") String loadMoreMessage,
  }) = _ThirdState;
}

enum FetchStatus {
  initial,
  loading,
  loaded,
  failed,
}

extension FetchBool on FetchStatus {
  bool get isLoading => this == FetchStatus.loading;
  bool get isInitial => this == FetchStatus.initial;
  bool get isLoaded => this == FetchStatus.loaded;
  bool get isFailed => this == FetchStatus.failed;
}
