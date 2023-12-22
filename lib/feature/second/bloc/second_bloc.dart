import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'second_event.dart';
part 'second_state.dart';
part 'second_bloc.freezed.dart';

class SecondBloc extends Bloc<SecondEvent, SecondState> {
  SecondBloc() : super(const SecondState()) {
    on<ChangeSelectedUserEvent>(_onChangeSelectedUser);
  }

  void _onChangeSelectedUser(
      ChangeSelectedUserEvent event, Emitter<SecondState> emit) {
    emit(state.copyWith(name: event.newName));
  }
}
