part of 'second_bloc.dart';

@freezed
class SecondState with _$SecondState {
  const factory SecondState({
    @Default("") String name,
  }) = _SecondState;
}
