part of 'second_bloc.dart';

@freezed
class SecondEvent with _$SecondEvent {
  const factory SecondEvent.changeSelectedUser(String newName) =
      ChangeSelectedUserEvent;
}
