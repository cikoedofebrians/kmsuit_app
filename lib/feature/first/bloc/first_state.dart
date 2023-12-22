part of 'first_bloc.dart';

@freezed
class FirstState with _$FirstState {
  const factory FirstState({
    @Default("") String name,
    @Default("") String palindrome,
    @Default("") String palindromeMessage,
  }) = _FirstState;
}
