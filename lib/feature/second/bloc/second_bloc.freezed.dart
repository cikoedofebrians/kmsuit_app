// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'second_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SecondEvent {
  String get newName => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newName) changeSelectedUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String newName)? changeSelectedUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newName)? changeSelectedUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeSelectedUserEvent value) changeSelectedUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeSelectedUserEvent value)? changeSelectedUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeSelectedUserEvent value)? changeSelectedUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SecondEventCopyWith<SecondEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecondEventCopyWith<$Res> {
  factory $SecondEventCopyWith(
          SecondEvent value, $Res Function(SecondEvent) then) =
      _$SecondEventCopyWithImpl<$Res, SecondEvent>;
  @useResult
  $Res call({String newName});
}

/// @nodoc
class _$SecondEventCopyWithImpl<$Res, $Val extends SecondEvent>
    implements $SecondEventCopyWith<$Res> {
  _$SecondEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newName = null,
  }) {
    return _then(_value.copyWith(
      newName: null == newName
          ? _value.newName
          : newName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangeSelectedUserEventImplCopyWith<$Res>
    implements $SecondEventCopyWith<$Res> {
  factory _$$ChangeSelectedUserEventImplCopyWith(
          _$ChangeSelectedUserEventImpl value,
          $Res Function(_$ChangeSelectedUserEventImpl) then) =
      __$$ChangeSelectedUserEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String newName});
}

/// @nodoc
class __$$ChangeSelectedUserEventImplCopyWithImpl<$Res>
    extends _$SecondEventCopyWithImpl<$Res, _$ChangeSelectedUserEventImpl>
    implements _$$ChangeSelectedUserEventImplCopyWith<$Res> {
  __$$ChangeSelectedUserEventImplCopyWithImpl(
      _$ChangeSelectedUserEventImpl _value,
      $Res Function(_$ChangeSelectedUserEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newName = null,
  }) {
    return _then(_$ChangeSelectedUserEventImpl(
      null == newName
          ? _value.newName
          : newName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeSelectedUserEventImpl implements ChangeSelectedUserEvent {
  const _$ChangeSelectedUserEventImpl(this.newName);

  @override
  final String newName;

  @override
  String toString() {
    return 'SecondEvent.changeSelectedUser(newName: $newName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeSelectedUserEventImpl &&
            (identical(other.newName, newName) || other.newName == newName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeSelectedUserEventImplCopyWith<_$ChangeSelectedUserEventImpl>
      get copyWith => __$$ChangeSelectedUserEventImplCopyWithImpl<
          _$ChangeSelectedUserEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newName) changeSelectedUser,
  }) {
    return changeSelectedUser(newName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String newName)? changeSelectedUser,
  }) {
    return changeSelectedUser?.call(newName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newName)? changeSelectedUser,
    required TResult orElse(),
  }) {
    if (changeSelectedUser != null) {
      return changeSelectedUser(newName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeSelectedUserEvent value) changeSelectedUser,
  }) {
    return changeSelectedUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeSelectedUserEvent value)? changeSelectedUser,
  }) {
    return changeSelectedUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeSelectedUserEvent value)? changeSelectedUser,
    required TResult orElse(),
  }) {
    if (changeSelectedUser != null) {
      return changeSelectedUser(this);
    }
    return orElse();
  }
}

abstract class ChangeSelectedUserEvent implements SecondEvent {
  const factory ChangeSelectedUserEvent(final String newName) =
      _$ChangeSelectedUserEventImpl;

  @override
  String get newName;
  @override
  @JsonKey(ignore: true)
  _$$ChangeSelectedUserEventImplCopyWith<_$ChangeSelectedUserEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SecondState {
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SecondStateCopyWith<SecondState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecondStateCopyWith<$Res> {
  factory $SecondStateCopyWith(
          SecondState value, $Res Function(SecondState) then) =
      _$SecondStateCopyWithImpl<$Res, SecondState>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$SecondStateCopyWithImpl<$Res, $Val extends SecondState>
    implements $SecondStateCopyWith<$Res> {
  _$SecondStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SecondStateImplCopyWith<$Res>
    implements $SecondStateCopyWith<$Res> {
  factory _$$SecondStateImplCopyWith(
          _$SecondStateImpl value, $Res Function(_$SecondStateImpl) then) =
      __$$SecondStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$SecondStateImplCopyWithImpl<$Res>
    extends _$SecondStateCopyWithImpl<$Res, _$SecondStateImpl>
    implements _$$SecondStateImplCopyWith<$Res> {
  __$$SecondStateImplCopyWithImpl(
      _$SecondStateImpl _value, $Res Function(_$SecondStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$SecondStateImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SecondStateImpl implements _SecondState {
  const _$SecondStateImpl({this.name = ""});

  @override
  @JsonKey()
  final String name;

  @override
  String toString() {
    return 'SecondState(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SecondStateImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SecondStateImplCopyWith<_$SecondStateImpl> get copyWith =>
      __$$SecondStateImplCopyWithImpl<_$SecondStateImpl>(this, _$identity);
}

abstract class _SecondState implements SecondState {
  const factory _SecondState({final String name}) = _$SecondStateImpl;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$SecondStateImplCopyWith<_$SecondStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
