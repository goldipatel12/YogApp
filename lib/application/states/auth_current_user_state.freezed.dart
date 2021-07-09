// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_current_user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthCurrentUserStateTearOff {
  const _$AuthCurrentUserStateTearOff();

// ignore: unused_element
  InitialUser call() {
    return const InitialUser();
  }

// ignore: unused_element
  Finding finding() {
    return const Finding();
  }

// ignore: unused_element
  SignedInUser alreadySignedIn(User user) {
    return SignedInUser(
      user,
    );
  }

// ignore: unused_element
  DetailsNotUploaded detailsNotUploaded(FirebaseUser user) {
    return DetailsNotUploaded(
      user,
    );
  }

// ignore: unused_element
  NotSignedInUser notSignedIn() {
    return const NotSignedInUser();
  }

// ignore: unused_element
  Error error({String message}) {
    return Error(
      message: message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AuthCurrentUserState = _$AuthCurrentUserStateTearOff();

/// @nodoc
mixin _$AuthCurrentUserState {
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(), {
    @required TResult finding(),
    @required TResult alreadySignedIn(User user),
    @required TResult detailsNotUploaded(FirebaseUser user),
    @required TResult notSignedIn(),
    @required TResult error(String message),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(), {
    TResult finding(),
    TResult alreadySignedIn(User user),
    TResult detailsNotUploaded(FirebaseUser user),
    TResult notSignedIn(),
    TResult error(String message),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(InitialUser value), {
    @required TResult finding(Finding value),
    @required TResult alreadySignedIn(SignedInUser value),
    @required TResult detailsNotUploaded(DetailsNotUploaded value),
    @required TResult notSignedIn(NotSignedInUser value),
    @required TResult error(Error value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(InitialUser value), {
    TResult finding(Finding value),
    TResult alreadySignedIn(SignedInUser value),
    TResult detailsNotUploaded(DetailsNotUploaded value),
    TResult notSignedIn(NotSignedInUser value),
    TResult error(Error value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthCurrentUserStateCopyWith<$Res> {
  factory $AuthCurrentUserStateCopyWith(AuthCurrentUserState value,
          $Res Function(AuthCurrentUserState) then) =
      _$AuthCurrentUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthCurrentUserStateCopyWithImpl<$Res>
    implements $AuthCurrentUserStateCopyWith<$Res> {
  _$AuthCurrentUserStateCopyWithImpl(this._value, this._then);

  final AuthCurrentUserState _value;
  // ignore: unused_field
  final $Res Function(AuthCurrentUserState) _then;
}

/// @nodoc
abstract class $InitialUserCopyWith<$Res> {
  factory $InitialUserCopyWith(
          InitialUser value, $Res Function(InitialUser) then) =
      _$InitialUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialUserCopyWithImpl<$Res>
    extends _$AuthCurrentUserStateCopyWithImpl<$Res>
    implements $InitialUserCopyWith<$Res> {
  _$InitialUserCopyWithImpl(
      InitialUser _value, $Res Function(InitialUser) _then)
      : super(_value, (v) => _then(v as InitialUser));

  @override
  InitialUser get _value => super._value as InitialUser;
}

/// @nodoc
class _$InitialUser implements InitialUser {
  const _$InitialUser();

  @override
  String toString() {
    return 'AuthCurrentUserState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(), {
    @required TResult finding(),
    @required TResult alreadySignedIn(User user),
    @required TResult detailsNotUploaded(FirebaseUser user),
    @required TResult notSignedIn(),
    @required TResult error(String message),
  }) {
    assert($default != null);
    assert(finding != null);
    assert(alreadySignedIn != null);
    assert(detailsNotUploaded != null);
    assert(notSignedIn != null);
    assert(error != null);
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(), {
    TResult finding(),
    TResult alreadySignedIn(User user),
    TResult detailsNotUploaded(FirebaseUser user),
    TResult notSignedIn(),
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
    TResult $default(InitialUser value), {
    @required TResult finding(Finding value),
    @required TResult alreadySignedIn(SignedInUser value),
    @required TResult detailsNotUploaded(DetailsNotUploaded value),
    @required TResult notSignedIn(NotSignedInUser value),
    @required TResult error(Error value),
  }) {
    assert($default != null);
    assert(finding != null);
    assert(alreadySignedIn != null);
    assert(detailsNotUploaded != null);
    assert(notSignedIn != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(InitialUser value), {
    TResult finding(Finding value),
    TResult alreadySignedIn(SignedInUser value),
    TResult detailsNotUploaded(DetailsNotUploaded value),
    TResult notSignedIn(NotSignedInUser value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class InitialUser implements AuthCurrentUserState {
  const factory InitialUser() = _$InitialUser;
}

/// @nodoc
abstract class $FindingCopyWith<$Res> {
  factory $FindingCopyWith(Finding value, $Res Function(Finding) then) =
      _$FindingCopyWithImpl<$Res>;
}

/// @nodoc
class _$FindingCopyWithImpl<$Res>
    extends _$AuthCurrentUserStateCopyWithImpl<$Res>
    implements $FindingCopyWith<$Res> {
  _$FindingCopyWithImpl(Finding _value, $Res Function(Finding) _then)
      : super(_value, (v) => _then(v as Finding));

  @override
  Finding get _value => super._value as Finding;
}

/// @nodoc
class _$Finding implements Finding {
  const _$Finding();

  @override
  String toString() {
    return 'AuthCurrentUserState.finding()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Finding);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(), {
    @required TResult finding(),
    @required TResult alreadySignedIn(User user),
    @required TResult detailsNotUploaded(FirebaseUser user),
    @required TResult notSignedIn(),
    @required TResult error(String message),
  }) {
    assert($default != null);
    assert(finding != null);
    assert(alreadySignedIn != null);
    assert(detailsNotUploaded != null);
    assert(notSignedIn != null);
    assert(error != null);
    return finding();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(), {
    TResult finding(),
    TResult alreadySignedIn(User user),
    TResult detailsNotUploaded(FirebaseUser user),
    TResult notSignedIn(),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (finding != null) {
      return finding();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(InitialUser value), {
    @required TResult finding(Finding value),
    @required TResult alreadySignedIn(SignedInUser value),
    @required TResult detailsNotUploaded(DetailsNotUploaded value),
    @required TResult notSignedIn(NotSignedInUser value),
    @required TResult error(Error value),
  }) {
    assert($default != null);
    assert(finding != null);
    assert(alreadySignedIn != null);
    assert(detailsNotUploaded != null);
    assert(notSignedIn != null);
    assert(error != null);
    return finding(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(InitialUser value), {
    TResult finding(Finding value),
    TResult alreadySignedIn(SignedInUser value),
    TResult detailsNotUploaded(DetailsNotUploaded value),
    TResult notSignedIn(NotSignedInUser value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (finding != null) {
      return finding(this);
    }
    return orElse();
  }
}

abstract class Finding implements AuthCurrentUserState {
  const factory Finding() = _$Finding;
}

/// @nodoc
abstract class $SignedInUserCopyWith<$Res> {
  factory $SignedInUserCopyWith(
          SignedInUser value, $Res Function(SignedInUser) then) =
      _$SignedInUserCopyWithImpl<$Res>;
  $Res call({User user});
}

/// @nodoc
class _$SignedInUserCopyWithImpl<$Res>
    extends _$AuthCurrentUserStateCopyWithImpl<$Res>
    implements $SignedInUserCopyWith<$Res> {
  _$SignedInUserCopyWithImpl(
      SignedInUser _value, $Res Function(SignedInUser) _then)
      : super(_value, (v) => _then(v as SignedInUser));

  @override
  SignedInUser get _value => super._value as SignedInUser;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(SignedInUser(
      user == freezed ? _value.user : user as User,
    ));
  }
}

/// @nodoc
class _$SignedInUser implements SignedInUser {
  const _$SignedInUser(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthCurrentUserState.alreadySignedIn(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignedInUser &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $SignedInUserCopyWith<SignedInUser> get copyWith =>
      _$SignedInUserCopyWithImpl<SignedInUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(), {
    @required TResult finding(),
    @required TResult alreadySignedIn(User user),
    @required TResult detailsNotUploaded(FirebaseUser user),
    @required TResult notSignedIn(),
    @required TResult error(String message),
  }) {
    assert($default != null);
    assert(finding != null);
    assert(alreadySignedIn != null);
    assert(detailsNotUploaded != null);
    assert(notSignedIn != null);
    assert(error != null);
    return alreadySignedIn(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(), {
    TResult finding(),
    TResult alreadySignedIn(User user),
    TResult detailsNotUploaded(FirebaseUser user),
    TResult notSignedIn(),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (alreadySignedIn != null) {
      return alreadySignedIn(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(InitialUser value), {
    @required TResult finding(Finding value),
    @required TResult alreadySignedIn(SignedInUser value),
    @required TResult detailsNotUploaded(DetailsNotUploaded value),
    @required TResult notSignedIn(NotSignedInUser value),
    @required TResult error(Error value),
  }) {
    assert($default != null);
    assert(finding != null);
    assert(alreadySignedIn != null);
    assert(detailsNotUploaded != null);
    assert(notSignedIn != null);
    assert(error != null);
    return alreadySignedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(InitialUser value), {
    TResult finding(Finding value),
    TResult alreadySignedIn(SignedInUser value),
    TResult detailsNotUploaded(DetailsNotUploaded value),
    TResult notSignedIn(NotSignedInUser value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (alreadySignedIn != null) {
      return alreadySignedIn(this);
    }
    return orElse();
  }
}

abstract class SignedInUser implements AuthCurrentUserState {
  const factory SignedInUser(User user) = _$SignedInUser;

  User get user;
  @JsonKey(ignore: true)
  $SignedInUserCopyWith<SignedInUser> get copyWith;
}

/// @nodoc
abstract class $DetailsNotUploadedCopyWith<$Res> {
  factory $DetailsNotUploadedCopyWith(
          DetailsNotUploaded value, $Res Function(DetailsNotUploaded) then) =
      _$DetailsNotUploadedCopyWithImpl<$Res>;
  $Res call({FirebaseUser user});
}

/// @nodoc
class _$DetailsNotUploadedCopyWithImpl<$Res>
    extends _$AuthCurrentUserStateCopyWithImpl<$Res>
    implements $DetailsNotUploadedCopyWith<$Res> {
  _$DetailsNotUploadedCopyWithImpl(
      DetailsNotUploaded _value, $Res Function(DetailsNotUploaded) _then)
      : super(_value, (v) => _then(v as DetailsNotUploaded));

  @override
  DetailsNotUploaded get _value => super._value as DetailsNotUploaded;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(DetailsNotUploaded(
      user == freezed ? _value.user : user as FirebaseUser,
    ));
  }
}

/// @nodoc
class _$DetailsNotUploaded implements DetailsNotUploaded {
  const _$DetailsNotUploaded(this.user) : assert(user != null);

  @override
  final FirebaseUser user;

  @override
  String toString() {
    return 'AuthCurrentUserState.detailsNotUploaded(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DetailsNotUploaded &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $DetailsNotUploadedCopyWith<DetailsNotUploaded> get copyWith =>
      _$DetailsNotUploadedCopyWithImpl<DetailsNotUploaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(), {
    @required TResult finding(),
    @required TResult alreadySignedIn(User user),
    @required TResult detailsNotUploaded(FirebaseUser user),
    @required TResult notSignedIn(),
    @required TResult error(String message),
  }) {
    assert($default != null);
    assert(finding != null);
    assert(alreadySignedIn != null);
    assert(detailsNotUploaded != null);
    assert(notSignedIn != null);
    assert(error != null);
    return detailsNotUploaded(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(), {
    TResult finding(),
    TResult alreadySignedIn(User user),
    TResult detailsNotUploaded(FirebaseUser user),
    TResult notSignedIn(),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (detailsNotUploaded != null) {
      return detailsNotUploaded(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(InitialUser value), {
    @required TResult finding(Finding value),
    @required TResult alreadySignedIn(SignedInUser value),
    @required TResult detailsNotUploaded(DetailsNotUploaded value),
    @required TResult notSignedIn(NotSignedInUser value),
    @required TResult error(Error value),
  }) {
    assert($default != null);
    assert(finding != null);
    assert(alreadySignedIn != null);
    assert(detailsNotUploaded != null);
    assert(notSignedIn != null);
    assert(error != null);
    return detailsNotUploaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(InitialUser value), {
    TResult finding(Finding value),
    TResult alreadySignedIn(SignedInUser value),
    TResult detailsNotUploaded(DetailsNotUploaded value),
    TResult notSignedIn(NotSignedInUser value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (detailsNotUploaded != null) {
      return detailsNotUploaded(this);
    }
    return orElse();
  }
}

abstract class DetailsNotUploaded implements AuthCurrentUserState {
  const factory DetailsNotUploaded(FirebaseUser user) = _$DetailsNotUploaded;

  FirebaseUser get user;
  @JsonKey(ignore: true)
  $DetailsNotUploadedCopyWith<DetailsNotUploaded> get copyWith;
}

/// @nodoc
abstract class $NotSignedInUserCopyWith<$Res> {
  factory $NotSignedInUserCopyWith(
          NotSignedInUser value, $Res Function(NotSignedInUser) then) =
      _$NotSignedInUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotSignedInUserCopyWithImpl<$Res>
    extends _$AuthCurrentUserStateCopyWithImpl<$Res>
    implements $NotSignedInUserCopyWith<$Res> {
  _$NotSignedInUserCopyWithImpl(
      NotSignedInUser _value, $Res Function(NotSignedInUser) _then)
      : super(_value, (v) => _then(v as NotSignedInUser));

  @override
  NotSignedInUser get _value => super._value as NotSignedInUser;
}

/// @nodoc
class _$NotSignedInUser implements NotSignedInUser {
  const _$NotSignedInUser();

  @override
  String toString() {
    return 'AuthCurrentUserState.notSignedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NotSignedInUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(), {
    @required TResult finding(),
    @required TResult alreadySignedIn(User user),
    @required TResult detailsNotUploaded(FirebaseUser user),
    @required TResult notSignedIn(),
    @required TResult error(String message),
  }) {
    assert($default != null);
    assert(finding != null);
    assert(alreadySignedIn != null);
    assert(detailsNotUploaded != null);
    assert(notSignedIn != null);
    assert(error != null);
    return notSignedIn();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(), {
    TResult finding(),
    TResult alreadySignedIn(User user),
    TResult detailsNotUploaded(FirebaseUser user),
    TResult notSignedIn(),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (notSignedIn != null) {
      return notSignedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(InitialUser value), {
    @required TResult finding(Finding value),
    @required TResult alreadySignedIn(SignedInUser value),
    @required TResult detailsNotUploaded(DetailsNotUploaded value),
    @required TResult notSignedIn(NotSignedInUser value),
    @required TResult error(Error value),
  }) {
    assert($default != null);
    assert(finding != null);
    assert(alreadySignedIn != null);
    assert(detailsNotUploaded != null);
    assert(notSignedIn != null);
    assert(error != null);
    return notSignedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(InitialUser value), {
    TResult finding(Finding value),
    TResult alreadySignedIn(SignedInUser value),
    TResult detailsNotUploaded(DetailsNotUploaded value),
    TResult notSignedIn(NotSignedInUser value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (notSignedIn != null) {
      return notSignedIn(this);
    }
    return orElse();
  }
}

abstract class NotSignedInUser implements AuthCurrentUserState {
  const factory NotSignedInUser() = _$NotSignedInUser;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$AuthCurrentUserStateCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(Error(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$Error implements Error {
  const _$Error({this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AuthCurrentUserState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(), {
    @required TResult finding(),
    @required TResult alreadySignedIn(User user),
    @required TResult detailsNotUploaded(FirebaseUser user),
    @required TResult notSignedIn(),
    @required TResult error(String message),
  }) {
    assert($default != null);
    assert(finding != null);
    assert(alreadySignedIn != null);
    assert(detailsNotUploaded != null);
    assert(notSignedIn != null);
    assert(error != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(), {
    TResult finding(),
    TResult alreadySignedIn(User user),
    TResult detailsNotUploaded(FirebaseUser user),
    TResult notSignedIn(),
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
    TResult $default(InitialUser value), {
    @required TResult finding(Finding value),
    @required TResult alreadySignedIn(SignedInUser value),
    @required TResult detailsNotUploaded(DetailsNotUploaded value),
    @required TResult notSignedIn(NotSignedInUser value),
    @required TResult error(Error value),
  }) {
    assert($default != null);
    assert(finding != null);
    assert(alreadySignedIn != null);
    assert(detailsNotUploaded != null);
    assert(notSignedIn != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(InitialUser value), {
    TResult finding(Finding value),
    TResult alreadySignedIn(SignedInUser value),
    TResult detailsNotUploaded(DetailsNotUploaded value),
    TResult notSignedIn(NotSignedInUser value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements AuthCurrentUserState {
  const factory Error({String message}) = _$Error;

  String get message;
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith;
}
