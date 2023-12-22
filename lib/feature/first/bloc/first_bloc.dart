import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'first_event.dart';
part 'first_state.dart';
part 'first_bloc.freezed.dart';

class FirstBloc extends Bloc<FirstEvent, FirstState> {
  FirstBloc() : super(const FirstState()) {
    on<CheckPalindromeEvent>(_onCheckPalindromeEvent);
    on<OnChangeNameTextEvent>(_onChangeNameTextEvent);
    on<OnChangePalindromeTextEvent>(_onChangePalindromeTextEvent);
  }

  _onCheckPalindromeEvent(
      CheckPalindromeEvent event, Emitter<FirstState> emit) {
    if (state.palindrome.isEmpty) return;

    final chars = state.palindrome.split('');
    final reversedPalindrome = chars.reversed.join('');

    if (reversedPalindrome == state.palindrome) {
      emit(state.copyWith(palindromeMessage: "isPalindrome"));
    } else {
      emit(state.copyWith(palindromeMessage: "not palindrome"));
    }

    emit(state.copyWith(palindromeMessage: ""));
  }

  _onChangeNameTextEvent(
      OnChangeNameTextEvent event, Emitter<FirstState> emit) {
    emit(state.copyWith(name: event.newValue));
  }

  _onChangePalindromeTextEvent(
      OnChangePalindromeTextEvent event, Emitter<FirstState> emit) {
    emit(state.copyWith(palindrome: event.newValue));
  }
}
