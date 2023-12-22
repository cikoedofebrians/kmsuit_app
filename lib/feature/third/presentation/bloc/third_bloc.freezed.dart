// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'third_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ThirdEvent {
  bool get isLoadMore => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoadMore) fetchUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoadMore)? fetchUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoadMore)? fetchUsers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchUserEvent value) fetchUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchUserEvent value)? fetchUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchUserEvent value)? fetchUsers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThirdEventCopyWith<ThirdEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThirdEventCopyWith<$Res> {
  factory $ThirdEventCopyWith(
          ThirdEvent value, $Res Function(ThirdEvent) then) =
      _$ThirdEventCopyWithImpl<$Res, ThirdEvent>;
  @useResult
  $Res call({bool isLoadMore});
}

/// @nodoc
class _$ThirdEventCopyWithImpl<$Res, $Val extends ThirdEvent>
    implements $ThirdEventCopyWith<$Res> {
  _$ThirdEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoadMore = null,
  }) {
    return _then(_value.copyWith(
      isLoadMore: null == isLoadMore
          ? _value.isLoadMore
          : isLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchUserEventImplCopyWith<$Res>
    implements $ThirdEventCopyWith<$Res> {
  factory _$$FetchUserEventImplCopyWith(_$FetchUserEventImpl value,
          $Res Function(_$FetchUserEventImpl) then) =
      __$$FetchUserEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoadMore});
}

/// @nodoc
class __$$FetchUserEventImplCopyWithImpl<$Res>
    extends _$ThirdEventCopyWithImpl<$Res, _$FetchUserEventImpl>
    implements _$$FetchUserEventImplCopyWith<$Res> {
  __$$FetchUserEventImplCopyWithImpl(
      _$FetchUserEventImpl _value, $Res Function(_$FetchUserEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoadMore = null,
  }) {
    return _then(_$FetchUserEventImpl(
      null == isLoadMore
          ? _value.isLoadMore
          : isLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FetchUserEventImpl implements FetchUserEvent {
  const _$FetchUserEventImpl(this.isLoadMore);

  @override
  final bool isLoadMore;

  @override
  String toString() {
    return 'ThirdEvent.fetchUsers(isLoadMore: $isLoadMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchUserEventImpl &&
            (identical(other.isLoadMore, isLoadMore) ||
                other.isLoadMore == isLoadMore));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoadMore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchUserEventImplCopyWith<_$FetchUserEventImpl> get copyWith =>
      __$$FetchUserEventImplCopyWithImpl<_$FetchUserEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoadMore) fetchUsers,
  }) {
    return fetchUsers(isLoadMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoadMore)? fetchUsers,
  }) {
    return fetchUsers?.call(isLoadMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoadMore)? fetchUsers,
    required TResult orElse(),
  }) {
    if (fetchUsers != null) {
      return fetchUsers(isLoadMore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchUserEvent value) fetchUsers,
  }) {
    return fetchUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchUserEvent value)? fetchUsers,
  }) {
    return fetchUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchUserEvent value)? fetchUsers,
    required TResult orElse(),
  }) {
    if (fetchUsers != null) {
      return fetchUsers(this);
    }
    return orElse();
  }
}

abstract class FetchUserEvent implements ThirdEvent {
  const factory FetchUserEvent(final bool isLoadMore) = _$FetchUserEventImpl;

  @override
  bool get isLoadMore;
  @override
  @JsonKey(ignore: true)
  _$$FetchUserEventImplCopyWith<_$FetchUserEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ThirdState {
  List<UserEntity> get userList => throw _privateConstructorUsedError;
  FetchStatus get fetchStatus => throw _privateConstructorUsedError;
  FetchStatus get loadMoreFetchStatus => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get loadMoreMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThirdStateCopyWith<ThirdState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThirdStateCopyWith<$Res> {
  factory $ThirdStateCopyWith(
          ThirdState value, $Res Function(ThirdState) then) =
      _$ThirdStateCopyWithImpl<$Res, ThirdState>;
  @useResult
  $Res call(
      {List<UserEntity> userList,
      FetchStatus fetchStatus,
      FetchStatus loadMoreFetchStatus,
      String message,
      String loadMoreMessage});
}

/// @nodoc
class _$ThirdStateCopyWithImpl<$Res, $Val extends ThirdState>
    implements $ThirdStateCopyWith<$Res> {
  _$ThirdStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userList = null,
    Object? fetchStatus = null,
    Object? loadMoreFetchStatus = null,
    Object? message = null,
    Object? loadMoreMessage = null,
  }) {
    return _then(_value.copyWith(
      userList: null == userList
          ? _value.userList
          : userList // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>,
      fetchStatus: null == fetchStatus
          ? _value.fetchStatus
          : fetchStatus // ignore: cast_nullable_to_non_nullable
              as FetchStatus,
      loadMoreFetchStatus: null == loadMoreFetchStatus
          ? _value.loadMoreFetchStatus
          : loadMoreFetchStatus // ignore: cast_nullable_to_non_nullable
              as FetchStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      loadMoreMessage: null == loadMoreMessage
          ? _value.loadMoreMessage
          : loadMoreMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThirdStateImplCopyWith<$Res>
    implements $ThirdStateCopyWith<$Res> {
  factory _$$ThirdStateImplCopyWith(
          _$ThirdStateImpl value, $Res Function(_$ThirdStateImpl) then) =
      __$$ThirdStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<UserEntity> userList,
      FetchStatus fetchStatus,
      FetchStatus loadMoreFetchStatus,
      String message,
      String loadMoreMessage});
}

/// @nodoc
class __$$ThirdStateImplCopyWithImpl<$Res>
    extends _$ThirdStateCopyWithImpl<$Res, _$ThirdStateImpl>
    implements _$$ThirdStateImplCopyWith<$Res> {
  __$$ThirdStateImplCopyWithImpl(
      _$ThirdStateImpl _value, $Res Function(_$ThirdStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userList = null,
    Object? fetchStatus = null,
    Object? loadMoreFetchStatus = null,
    Object? message = null,
    Object? loadMoreMessage = null,
  }) {
    return _then(_$ThirdStateImpl(
      userList: null == userList
          ? _value._userList
          : userList // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>,
      fetchStatus: null == fetchStatus
          ? _value.fetchStatus
          : fetchStatus // ignore: cast_nullable_to_non_nullable
              as FetchStatus,
      loadMoreFetchStatus: null == loadMoreFetchStatus
          ? _value.loadMoreFetchStatus
          : loadMoreFetchStatus // ignore: cast_nullable_to_non_nullable
              as FetchStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      loadMoreMessage: null == loadMoreMessage
          ? _value.loadMoreMessage
          : loadMoreMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ThirdStateImpl implements _ThirdState {
  const _$ThirdStateImpl(
      {final List<UserEntity> userList = const [],
      this.fetchStatus = FetchStatus.initial,
      this.loadMoreFetchStatus = FetchStatus.initial,
      this.message = "",
      this.loadMoreMessage = ""})
      : _userList = userList;

  final List<UserEntity> _userList;
  @override
  @JsonKey()
  List<UserEntity> get userList {
    if (_userList is EqualUnmodifiableListView) return _userList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userList);
  }

  @override
  @JsonKey()
  final FetchStatus fetchStatus;
  @override
  @JsonKey()
  final FetchStatus loadMoreFetchStatus;
  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String loadMoreMessage;

  @override
  String toString() {
    return 'ThirdState(userList: $userList, fetchStatus: $fetchStatus, loadMoreFetchStatus: $loadMoreFetchStatus, message: $message, loadMoreMessage: $loadMoreMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThirdStateImpl &&
            const DeepCollectionEquality().equals(other._userList, _userList) &&
            (identical(other.fetchStatus, fetchStatus) ||
                other.fetchStatus == fetchStatus) &&
            (identical(other.loadMoreFetchStatus, loadMoreFetchStatus) ||
                other.loadMoreFetchStatus == loadMoreFetchStatus) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.loadMoreMessage, loadMoreMessage) ||
                other.loadMoreMessage == loadMoreMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_userList),
      fetchStatus,
      loadMoreFetchStatus,
      message,
      loadMoreMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThirdStateImplCopyWith<_$ThirdStateImpl> get copyWith =>
      __$$ThirdStateImplCopyWithImpl<_$ThirdStateImpl>(this, _$identity);
}

abstract class _ThirdState implements ThirdState {
  const factory _ThirdState(
      {final List<UserEntity> userList,
      final FetchStatus fetchStatus,
      final FetchStatus loadMoreFetchStatus,
      final String message,
      final String loadMoreMessage}) = _$ThirdStateImpl;

  @override
  List<UserEntity> get userList;
  @override
  FetchStatus get fetchStatus;
  @override
  FetchStatus get loadMoreFetchStatus;
  @override
  String get message;
  @override
  String get loadMoreMessage;
  @override
  @JsonKey(ignore: true)
  _$$ThirdStateImplCopyWith<_$ThirdStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
