// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'retrieve_user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RetrieveUserStateTearOff {
  const _$RetrieveUserStateTearOff();

// ignore: unused_element
  InitialUserData call() {
    return const InitialUserData();
  }

// ignore: unused_element
  RetrievingUser retrieving() {
    return const RetrievingUser();
  }

// ignore: unused_element
  RetrievedUser retrieved(User user) {
    return RetrievedUser(
      user,
    );
  }

// ignore: unused_element
  RetrievedUserAccuracy hasAccuracyData(User user) {
    return RetrievedUserAccuracy(
      user,
    );
  }

// ignore: unused_element
  ErrorRetrievingUser error({String message}) {
    return ErrorRetrievingUser(
      message: message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RetrieveUserState = _$RetrieveUserStateTearOff();

/// @nodoc
mixin _$RetrieveUserState {
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(), {
    @required TResult retrieving(),
    @required TResult retrieved(User user),
    @required TResult hasAccuracyData(User user),
    @required TResult error(String message),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(), {
    TResult retrieving(),
    TResult retrieved(User user),
    TResult hasAccuracyData(User user),
    TResult error(String message),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(InitialUserData value), {
    @required TResult retrieving(RetrievingUser value),
    @required TResult retrieved(RetrievedUser value),
    @required TResult hasAccuracyData(RetrievedUserAccuracy value),
    @required TResult error(ErrorRetrievingUser value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(InitialUserData value), {
    TResult retrieving(RetrievingUser value),
    TResult retrieved(RetrievedUser value),
    TResult hasAccuracyData(RetrievedUserAccuracy value),
    TResult error(ErrorRetrievingUser value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $RetrieveUserStateCopyWith<$Res> {
  factory $RetrieveUserStateCopyWith(
          RetrieveUserState value, $Res Function(RetrieveUserState) then) =
      _$RetrieveUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RetrieveUserStateCopyWithImpl<$Res>
    implements $RetrieveUserStateCopyWith<$Res> {
  _$RetrieveUserStateCopyWithImpl(this._value, this._then);

  final RetrieveUserState _value;
  // ignore: unused_field
  final $Res Function(RetrieveUserState) _then;
}

/// @nodoc
abstract class $InitialUserDataCopyWith<$Res> {
  factory $InitialUserDataCopyWith(
          InitialUserData value, $Res Function(InitialUserData) then) =
      _$InitialUserDataCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialUserDataCopyWithImpl<$Res>
    extends _$RetrieveUserStateCopyWithImpl<$Res>
    implements $InitialUserDataCopyWith<$Res> {
  _$InitialUserDataCopyWithImpl(
      InitialUserData _value, $Res Function(InitialUserData) _then)
      : super(_value, (v) => _then(v as InitialUserData));

  @override
  InitialUserData get _value => super._value as InitialUserData;
}

/// @nodoc
class _$InitialUserData implements InitialUserData {
  const _$InitialUserData();

  @override
  String toString() {
    return 'RetrieveUserState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialUserData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(), {
    @required TResult retrieving(),
    @required TResult retrieved(User user),
    @required TResult hasAccuracyData(User user),
    @required TResult error(String message),
  }) {
    assert($default != null);
    assert(retrieving != null);
    assert(retrieved != null);
    assert(hasAccuracyData != null);
    assert(error != null);
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(), {
    TResult retrieving(),
    TResult retrieved(User user),
    TResult hasAccuracyData(User user),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(InitialUserData value), {
    @required TResult retrieving(RetrievingUser value),
    @required TResult retrieved(RetrievedUser value),
    @required TResult hasAccuracyData(RetrievedUserAccuracy value),
    @required TResult error(ErrorRetrievingUser value),
  }) {
    assert($default != null);
    assert(retrieving != null);
    assert(retrieved != null);
    assert(hasAccuracyData != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(InitialUserData value), {
    TResult retrieving(RetrievingUser value),
    TResult retrieved(RetrievedUser value),
    TResult hasAccuracyData(RetrievedUserAccuracy value),
    TResult error(ErrorRetrievingUser value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class InitialUserData implements RetrieveUserState {
  const factory InitialUserData() = _$InitialUserData;
}

/// @nodoc
abstract class $RetrievingUserCopyWith<$Res> {
  factory $RetrievingUserCopyWith(
          RetrievingUser value, $Res Function(RetrievingUser) then) =
      _$RetrievingUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$RetrievingUserCopyWithImpl<$Res>
    extends _$RetrieveUserStateCopyWithImpl<$Res>
    implements $RetrievingUserCopyWith<$Res> {
  _$RetrievingUserCopyWithImpl(
      RetrievingUser _value, $Res Function(RetrievingUser) _then)
      : super(_value, (v) => _then(v as RetrievingUser));

  @override
  RetrievingUser get _value => super._value as RetrievingUser;
}

/// @nodoc
class _$RetrievingUser implements RetrievingUser {
  const _$RetrievingUser();

  @override
  String toString() {
    return 'RetrieveUserState.retrieving()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RetrievingUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(), {
    @required TResult retrieving(),
    @required TResult retrieved(User user),
    @required TResult hasAccuracyData(User user),
    @required TResult error(String message),
  }) {
    assert($default != null);
    assert(retrieving != null);
    assert(retrieved != null);
    assert(hasAccuracyData != null);
    assert(error != null);
    return retrieving();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(), {
    TResult retrieving(),
    TResult retrieved(User user),
    TResult hasAccuracyData(User user),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (retrieving != null) {
      return retrieving();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(InitialUserData value), {
    @required TResult retrieving(RetrievingUser value),
    @required TResult retrieved(RetrievedUser value),
    @required TResult hasAccuracyData(RetrievedUserAccuracy value),
    @required TResult error(ErrorRetrievingUser value),
  }) {
    assert($default != null);
    assert(retrieving != null);
    assert(retrieved != null);
    assert(hasAccuracyData != null);
    assert(error != null);
    return retrieving(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(InitialUserData value), {
    TResult retrieving(RetrievingUser value),
    TResult retrieved(RetrievedUser value),
    TResult hasAccuracyData(RetrievedUserAccuracy value),
    TResult error(ErrorRetrievingUser value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (retrieving != null) {
      return retrieving(this);
    }
    return orElse();
  }
}

abstract class RetrievingUser implements RetrieveUserState {
  const factory RetrievingUser() = _$RetrievingUser;
}

/// @nodoc
abstract class $RetrievedUserCopyWith<$Res> {
  factory $RetrievedUserCopyWith(
          RetrievedUser value, $Res Function(RetrievedUser) then) =
      _$RetrievedUserCopyWithImpl<$Res>;
  $Res call({User user});
}

/// @nodoc
class _$RetrievedUserCopyWithImpl<$Res>
    extends _$RetrieveUserStateCopyWithImpl<$Res>
    implements $RetrievedUserCopyWith<$Res> {
  _$RetrievedUserCopyWithImpl(
      RetrievedUser _value, $Res Function(RetrievedUser) _then)
      : super(_value, (v) => _then(v as RetrievedUser));

  @override
  RetrievedUser get _value => super._value as RetrievedUser;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(RetrievedUser(
      user == freezed ? _value.user : user as User,
    ));
  }
}

/// @nodoc
class _$RetrievedUser implements RetrievedUser {
  const _$RetrievedUser(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'RetrieveUserState.retrieved(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RetrievedUser &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $RetrievedUserCopyWith<RetrievedUser> get copyWith =>
      _$RetrievedUserCopyWithImpl<RetrievedUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(), {
    @required TResult retrieving(),
    @required TResult retrieved(User user),
    @required TResult hasAccuracyData(User user),
    @required TResult error(String message),
  }) {
    assert($default != null);
    assert(retrieving != null);
    assert(retrieved != null);
    assert(hasAccuracyData != null);
    assert(error != null);
    return retrieved(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(), {
    TResult retrieving(),
    TResult retrieved(User user),
    TResult hasAccuracyData(User user),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (retrieved != null) {
      return retrieved(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(InitialUserData value), {
    @required TResult retrieving(RetrievingUser value),
    @required TResult retrieved(RetrievedUser value),
    @required TResult hasAccuracyData(RetrievedUserAccuracy value),
    @required TResult error(ErrorRetrievingUser value),
  }) {
    assert($default != null);
    assert(retrieving != null);
    assert(retrieved != null);
    assert(hasAccuracyData != null);
    assert(error != null);
    return retrieved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(InitialUserData value), {
    TResult retrieving(RetrievingUser value),
    TResult retrieved(RetrievedUser value),
    TResult hasAccuracyData(RetrievedUserAccuracy value),
    TResult error(ErrorRetrievingUser value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (retrieved != null) {
      return retrieved(this);
    }
    return orElse();
  }
}

abstract class RetrievedUser implements RetrieveUserState {
  const factory RetrievedUser(User user) = _$RetrievedUser;

  User get user;
  @JsonKey(ignore: true)
  $RetrievedUserCopyWith<RetrievedUser> get copyWith;
}

/// @nodoc
abstract class $RetrievedUserAccuracyCopyWith<$Res> {
  factory $RetrievedUserAccuracyCopyWith(RetrievedUserAccuracy value,
          $Res Function(RetrievedUserAccuracy) then) =
      _$RetrievedUserAccuracyCopyWithImpl<$Res>;
  $Res call({User user});
}

/// @nodoc
class _$RetrievedUserAccuracyCopyWithImpl<$Res>
    extends _$RetrieveUserStateCopyWithImpl<$Res>
    implements $RetrievedUserAccuracyCopyWith<$Res> {
  _$RetrievedUserAccuracyCopyWithImpl(
      RetrievedUserAccuracy _value, $Res Function(RetrievedUserAccuracy) _then)
      : super(_value, (v) => _then(v as RetrievedUserAccuracy));

  @override
  RetrievedUserAccuracy get _value => super._value as RetrievedUserAccuracy;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(RetrievedUserAccuracy(
      user == freezed ? _value.user : user as User,
    ));
  }
}

/// @nodoc
class _$RetrievedUserAccuracy implements RetrievedUserAccuracy {
  const _$RetrievedUserAccuracy(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'RetrieveUserState.hasAccuracyData(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RetrievedUserAccuracy &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $RetrievedUserAccuracyCopyWith<RetrievedUserAccuracy> get copyWith =>
      _$RetrievedUserAccuracyCopyWithImpl<RetrievedUserAccuracy>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(), {
    @required TResult retrieving(),
    @required TResult retrieved(User user),
    @required TResult hasAccuracyData(User user),
    @required TResult error(String message),
  }) {
    assert($default != null);
    assert(retrieving != null);
    assert(retrieved != null);
    assert(hasAccuracyData != null);
    assert(error != null);
    return hasAccuracyData(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(), {
    TResult retrieving(),
    TResult retrieved(User user),
    TResult hasAccuracyData(User user),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (hasAccuracyData != null) {
      return hasAccuracyData(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(InitialUserData value), {
    @required TResult retrieving(RetrievingUser value),
    @required TResult retrieved(RetrievedUser value),
    @required TResult hasAccuracyData(RetrievedUserAccuracy value),
    @required TResult error(ErrorRetrievingUser value),
  }) {
    assert($default != null);
    assert(retrieving != null);
    assert(retrieved != null);
    assert(hasAccuracyData != null);
    assert(error != null);
    return hasAccuracyData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(InitialUserData value), {
    TResult retrieving(RetrievingUser value),
    TResult retrieved(RetrievedUser value),
    TResult hasAccuracyData(RetrievedUserAccuracy value),
    TResult error(ErrorRetrievingUser value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (hasAccuracyData != null) {
      return hasAccuracyData(this);
    }
    return orElse();
  }
}

abstract class RetrievedUserAccuracy implements RetrieveUserState {
  const factory RetrievedUserAccuracy(User user) = _$RetrievedUserAccuracy;

  User get user;
  @JsonKey(ignore: true)
  $RetrievedUserAccuracyCopyWith<RetrievedUserAccuracy> get copyWith;
}

/// @nodoc
abstract class $ErrorRetrievingUserCopyWith<$Res> {
  factory $ErrorRetrievingUserCopyWith(
          ErrorRetrievingUser value, $Res Function(ErrorRetrievingUser) then) =
      _$ErrorRetrievingUserCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ErrorRetrievingUserCopyWithImpl<$Res>
    extends _$RetrieveUserStateCopyWithImpl<$Res>
    implements $ErrorRetrievingUserCopyWith<$Res> {
  _$ErrorRetrievingUserCopyWithImpl(
      ErrorRetrievingUser _value, $Res Function(ErrorRetrievingUser) _then)
      : super(_value, (v) => _then(v as ErrorRetrievingUser));

  @override
  ErrorRetrievingUser get _value => super._value as ErrorRetrievingUser;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(ErrorRetrievingUser(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$ErrorRetrievingUser implements ErrorRetrievingUser {
  const _$ErrorRetrievingUser({this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'RetrieveUserState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ErrorRetrievingUser &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ErrorRetrievingUserCopyWith<ErrorRetrievingUser> get copyWith =>
      _$ErrorRetrievingUserCopyWithImpl<ErrorRetrievingUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(), {
    @required TResult retrieving(),
    @required TResult retrieved(User user),
    @required TResult hasAccuracyData(User user),
    @required TResult error(String message),
  }) {
    assert($default != null);
    assert(retrieving != null);
    assert(retrieved != null);
    assert(hasAccuracyData != null);
    assert(error != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(), {
    TResult retrieving(),
    TResult retrieved(User user),
    TResult hasAccuracyData(User user),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(InitialUserData value), {
    @required TResult retrieving(RetrievingUser value),
    @required TResult retrieved(RetrievedUser value),
    @required TResult hasAccuracyData(RetrievedUserAccuracy value),
    @required TResult error(ErrorRetrievingUser value),
  }) {
    assert($default != null);
    assert(retrieving != null);
    assert(retrieved != null);
    assert(hasAccuracyData != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(InitialUserData value), {
    TResult retrieving(RetrievingUser value),
    TResult retrieved(RetrievedUser value),
    TResult hasAccuracyData(RetrievedUserAccuracy value),
    TResult error(ErrorRetrievingUser value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorRetrievingUser implements RetrieveUserState {
  const factory ErrorRetrievingUser({String message}) = _$ErrorRetrievingUser;

  String get message;
  @JsonKey(ignore: true)
  $ErrorRetrievingUserCopyWith<ErrorRetrievingUser> get copyWith;
}
