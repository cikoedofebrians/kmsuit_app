part of 'third_bloc.dart';

@freezed
class ThirdEvent with _$ThirdEvent {
  const factory ThirdEvent.fetchUsers(bool isLoadMore) = FetchUserEvent;
}
