part of 'first_bloc.dart';

@freezed
class FirstEvent with _$FirstEvent {
  const factory FirstEvent.checkPalindrome() = CheckPalindromeEvent;
  const factory FirstEvent.onChangePalindromeText(String newValue) =
      OnChangePalindromeTextEvent;
  const factory FirstEvent.onChangeNameText(String newValue) =
      OnChangeNameTextEvent;
}
