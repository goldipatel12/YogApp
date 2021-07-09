// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'store_user_score_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$StoreUserScoreStateTearOff {
  const _$StoreUserScoreStateTearOff();

// ignore: unused_element
  InitialScoreData call() {
    return const InitialScoreData();
  }

// ignore: unused_element
  StoringScoreData storing() {
    return const StoringScoreData();
  }

// ignore: unused_element
  StoredScoreData stored() {
    return const StoredScoreData();
  }

// ignore: unused_element
  ErrorStoringScoreData error({String message}) {
    return ErrorStoringScoreData(
      message: message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $StoreUserScoreState = _$StoreUserScoreStateTearOff();

/// @nodoc
mixin _$StoreUserScoreState {
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(), {
    @required TResult storing(),
    @required TResult stored(),
    @required TResult error(String message),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(), {
    TResult storing(),
    TResult stored(),
    TResult error(String message),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(InitialScoreData value), {
    @required TResult storing(StoringScoreData value),
    @required TResult stored(StoredScoreData value),
    @required TResult error(ErrorStoringScoreData value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(InitialScoreData value), {
    TResult storing(StoringScoreData value),
    TResult stored(StoredScoreData value),
    TResult error(ErrorStoringScoreData value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $StoreUserScoreStateCopyWith<$Res> {
  factory $StoreUserScoreStateCopyWith(
          StoreUserScoreState value, $Res Function(StoreUserScoreState) then) =
      _$StoreUserScoreStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$StoreUserScoreStateCopyWithImpl<$Res>
    implements $StoreUserScoreStateCopyWith<$Res> {
  _$StoreUserScoreStateCopyWithImpl(this._value, this._then);

  final StoreUserScoreState _value;
  // ignore: unused_field
  final $Res Function(StoreUserScoreState) _then;
}

/// @nodoc
abstract class $InitialScoreDataCopyWith<$Res> {
  factory $InitialScoreDataCopyWith(
          InitialScoreData value, $Res Function(InitialScoreData) then) =
      _$InitialScoreDataCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialScoreDataCopyWithImpl<$Res>
    extends _$StoreUserScoreStateCopyWithImpl<$Res>
    implements $InitialScoreDataCopyWith<$Res> {
  _$InitialScoreDataCopyWithImpl(
      InitialScoreData _value, $Res Function(InitialScoreData) _then)
      : super(_value, (v) => _then(v as InitialScoreData));

  @override
  InitialScoreData get _value => super._value as InitialScoreData;
}

/// @nodoc
class _$InitialScoreData implements InitialScoreData {
  const _$InitialScoreData();

  @override
  String toString() {
    return 'StoreUserScoreState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialScoreData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(), {
    @required TResult storing(),
    @required TResult stored(),
    @required TResult error(String message),
  }) {
    assert($default != null);
    assert(storing != null);
    assert(stored != null);
    assert(error != null);
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(), {
    TResult storing(),
    TResult stored(),
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
    TResult $default(InitialScoreData value), {
    @required TResult storing(StoringScoreData value),
    @required TResult stored(StoredScoreData value),
    @required TResult error(ErrorStoringScoreData value),
  }) {
    assert($default != null);
    assert(storing != null);
    assert(stored != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(InitialScoreData value), {
    TResult storing(StoringScoreData value),
    TResult stored(StoredScoreData value),
    TResult error(ErrorStoringScoreData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class InitialScoreData implements StoreUserScoreState {
  const factory InitialScoreData() = _$InitialScoreData;
}

/// @nodoc
abstract class $StoringScoreDataCopyWith<$Res> {
  factory $StoringScoreDataCopyWith(
          StoringScoreData value, $Res Function(StoringScoreData) then) =
      _$StoringScoreDataCopyWithImpl<$Res>;
}

/// @nodoc
class _$StoringScoreDataCopyWithImpl<$Res>
    extends _$StoreUserScoreStateCopyWithImpl<$Res>
    implements $StoringScoreDataCopyWith<$Res> {
  _$StoringScoreDataCopyWithImpl(
      StoringScoreData _value, $Res Function(StoringScoreData) _then)
      : super(_value, (v) => _then(v as StoringScoreData));

  @override
  StoringScoreData get _value => super._value as StoringScoreData;
}

/// @nodoc
class _$StoringScoreData implements StoringScoreData {
  const _$StoringScoreData();

  @override
  String toString() {
    return 'StoreUserScoreState.storing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is StoringScoreData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(), {
    @required TResult storing(),
    @required TResult stored(),
    @required TResult error(String message),
  }) {
    assert($default != null);
    assert(storing != null);
    assert(stored != null);
    assert(error != null);
    return storing();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(), {
    TResult storing(),
    TResult stored(),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (storing != null) {
      return storing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(InitialScoreData value), {
    @required TResult storing(StoringScoreData value),
    @required TResult stored(StoredScoreData value),
    @required TResult error(ErrorStoringScoreData value),
  }) {
    assert($default != null);
    assert(storing != null);
    assert(stored != null);
    assert(error != null);
    return storing(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(InitialScoreData value), {
    TResult storing(StoringScoreData value),
    TResult stored(StoredScoreData value),
    TResult error(ErrorStoringScoreData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (storing != null) {
      return storing(this);
    }
    return orElse();
  }
}

abstract class StoringScoreData implements StoreUserScoreState {
  const factory StoringScoreData() = _$StoringScoreData;
}

/// @nodoc
abstract class $StoredScoreDataCopyWith<$Res> {
  factory $StoredScoreDataCopyWith(
          StoredScoreData value, $Res Function(StoredScoreData) then) =
      _$StoredScoreDataCopyWithImpl<$Res>;
}

/// @nodoc
class _$StoredScoreDataCopyWithImpl<$Res>
    extends _$StoreUserScoreStateCopyWithImpl<$Res>
    implements $StoredScoreDataCopyWith<$Res> {
  _$StoredScoreDataCopyWithImpl(
      StoredScoreData _value, $Res Function(StoredScoreData) _then)
      : super(_value, (v) => _then(v as StoredScoreData));

  @override
  StoredScoreData get _value => super._value as StoredScoreData;
}

/// @nodoc
class _$StoredScoreData implements StoredScoreData {
  const _$StoredScoreData();

  @override
  String toString() {
    return 'StoreUserScoreState.stored()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is StoredScoreData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(), {
    @required TResult storing(),
    @required TResult stored(),
    @required TResult error(String message),
  }) {
    assert($default != null);
    assert(storing != null);
    assert(stored != null);
    assert(error != null);
    return stored();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(), {
    TResult storing(),
    TResult stored(),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (stored != null) {
      return stored();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(InitialScoreData value), {
    @required TResult storing(StoringScoreData value),
    @required TResult stored(StoredScoreData value),
    @required TResult error(ErrorStoringScoreData value),
  }) {
    assert($default != null);
    assert(storing != null);
    assert(stored != null);
    assert(error != null);
    return stored(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(InitialScoreData value), {
    TResult storing(StoringScoreData value),
    TResult stored(StoredScoreData value),
    TResult error(ErrorStoringScoreData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (stored != null) {
      return stored(this);
    }
    return orElse();
  }
}

abstract class StoredScoreData implements StoreUserScoreState {
  const factory StoredScoreData() = _$StoredScoreData;
}

/// @nodoc
abstract class $ErrorStoringScoreDataCopyWith<$Res> {
  factory $ErrorStoringScoreDataCopyWith(ErrorStoringScoreData value,
          $Res Function(ErrorStoringScoreData) then) =
      _$ErrorStoringScoreDataCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ErrorStoringScoreDataCopyWithImpl<$Res>
    extends _$StoreUserScoreStateCopyWithImpl<$Res>
    implements $ErrorStoringScoreDataCopyWith<$Res> {
  _$ErrorStoringScoreDataCopyWithImpl(
      ErrorStoringScoreData _value, $Res Function(ErrorStoringScoreData) _then)
      : super(_value, (v) => _then(v as ErrorStoringScoreData));

  @override
  ErrorStoringScoreData get _value => super._value as ErrorStoringScoreData;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(ErrorStoringScoreData(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$ErrorStoringScoreData implements ErrorStoringScoreData {
  const _$ErrorStoringScoreData({this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'StoreUserScoreState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ErrorStoringScoreData &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ErrorStoringScoreDataCopyWith<ErrorStoringScoreData> get copyWith =>
      _$ErrorStoringScoreDataCopyWithImpl<ErrorStoringScoreData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(), {
    @required TResult storing(),
    @required TResult stored(),
    @required TResult error(String message),
  }) {
    assert($default != null);
    assert(storing != null);
    assert(stored != null);
    assert(error != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(), {
    TResult storing(),
    TResult stored(),
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
    TResult $default(InitialScoreData value), {
    @required TResult storing(StoringScoreData value),
    @required TResult stored(StoredScoreData value),
    @required TResult error(ErrorStoringScoreData value),
  }) {
    assert($default != null);
    assert(storing != null);
    assert(stored != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(InitialScoreData value), {
    TResult storing(StoringScoreData value),
    TResult stored(StoredScoreData value),
    TResult error(ErrorStoringScoreData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorStoringScoreData implements StoreUserScoreState {
  const factory ErrorStoringScoreData({String message}) =
      _$ErrorStoringScoreData;

  String get message;
  @JsonKey(ignore: true)
  $ErrorStoringScoreDataCopyWith<ErrorStoringScoreData> get copyWith;
}
