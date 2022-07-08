// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'leaderboard_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LeaderboardState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<TriviaUser> listUser) saved,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<TriviaUser> listUser)? saved,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<TriviaUser> listUser)? saved,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LeaderboardLoading value) loading,
    required TResult Function(LeaderboardLoaded value) saved,
    required TResult Function(LeaderboardError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LeaderboardLoading value)? loading,
    TResult Function(LeaderboardLoaded value)? saved,
    TResult Function(LeaderboardError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LeaderboardLoading value)? loading,
    TResult Function(LeaderboardLoaded value)? saved,
    TResult Function(LeaderboardError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaderboardStateCopyWith<$Res> {
  factory $LeaderboardStateCopyWith(
          LeaderboardState value, $Res Function(LeaderboardState) then) =
      _$LeaderboardStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LeaderboardStateCopyWithImpl<$Res>
    implements $LeaderboardStateCopyWith<$Res> {
  _$LeaderboardStateCopyWithImpl(this._value, this._then);

  final LeaderboardState _value;
  // ignore: unused_field
  final $Res Function(LeaderboardState) _then;
}

/// @nodoc
abstract class _$$LeaderboardLoadingCopyWith<$Res> {
  factory _$$LeaderboardLoadingCopyWith(_$LeaderboardLoading value,
          $Res Function(_$LeaderboardLoading) then) =
      __$$LeaderboardLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LeaderboardLoadingCopyWithImpl<$Res>
    extends _$LeaderboardStateCopyWithImpl<$Res>
    implements _$$LeaderboardLoadingCopyWith<$Res> {
  __$$LeaderboardLoadingCopyWithImpl(
      _$LeaderboardLoading _value, $Res Function(_$LeaderboardLoading) _then)
      : super(_value, (v) => _then(v as _$LeaderboardLoading));

  @override
  _$LeaderboardLoading get _value => super._value as _$LeaderboardLoading;
}

/// @nodoc

class _$LeaderboardLoading implements LeaderboardLoading {
  const _$LeaderboardLoading();

  @override
  String toString() {
    return 'LeaderboardState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LeaderboardLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<TriviaUser> listUser) saved,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<TriviaUser> listUser)? saved,
    TResult Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<TriviaUser> listUser)? saved,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LeaderboardLoading value) loading,
    required TResult Function(LeaderboardLoaded value) saved,
    required TResult Function(LeaderboardError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LeaderboardLoading value)? loading,
    TResult Function(LeaderboardLoaded value)? saved,
    TResult Function(LeaderboardError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LeaderboardLoading value)? loading,
    TResult Function(LeaderboardLoaded value)? saved,
    TResult Function(LeaderboardError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LeaderboardLoading implements LeaderboardState {
  const factory LeaderboardLoading() = _$LeaderboardLoading;
}

/// @nodoc
abstract class _$$LeaderboardLoadedCopyWith<$Res> {
  factory _$$LeaderboardLoadedCopyWith(
          _$LeaderboardLoaded value, $Res Function(_$LeaderboardLoaded) then) =
      __$$LeaderboardLoadedCopyWithImpl<$Res>;
  $Res call({List<TriviaUser> listUser});
}

/// @nodoc
class __$$LeaderboardLoadedCopyWithImpl<$Res>
    extends _$LeaderboardStateCopyWithImpl<$Res>
    implements _$$LeaderboardLoadedCopyWith<$Res> {
  __$$LeaderboardLoadedCopyWithImpl(
      _$LeaderboardLoaded _value, $Res Function(_$LeaderboardLoaded) _then)
      : super(_value, (v) => _then(v as _$LeaderboardLoaded));

  @override
  _$LeaderboardLoaded get _value => super._value as _$LeaderboardLoaded;

  @override
  $Res call({
    Object? listUser = freezed,
  }) {
    return _then(_$LeaderboardLoaded(
      listUser == freezed
          ? _value._listUser
          : listUser // ignore: cast_nullable_to_non_nullable
              as List<TriviaUser>,
    ));
  }
}

/// @nodoc

class _$LeaderboardLoaded implements LeaderboardLoaded {
  const _$LeaderboardLoaded(final List<TriviaUser> listUser)
      : _listUser = listUser;

  final List<TriviaUser> _listUser;
  @override
  List<TriviaUser> get listUser {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listUser);
  }

  @override
  String toString() {
    return 'LeaderboardState.saved(listUser: $listUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaderboardLoaded &&
            const DeepCollectionEquality().equals(other._listUser, _listUser));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_listUser));

  @JsonKey(ignore: true)
  @override
  _$$LeaderboardLoadedCopyWith<_$LeaderboardLoaded> get copyWith =>
      __$$LeaderboardLoadedCopyWithImpl<_$LeaderboardLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<TriviaUser> listUser) saved,
    required TResult Function(String message) error,
  }) {
    return saved(listUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<TriviaUser> listUser)? saved,
    TResult Function(String message)? error,
  }) {
    return saved?.call(listUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<TriviaUser> listUser)? saved,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(listUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LeaderboardLoading value) loading,
    required TResult Function(LeaderboardLoaded value) saved,
    required TResult Function(LeaderboardError value) error,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LeaderboardLoading value)? loading,
    TResult Function(LeaderboardLoaded value)? saved,
    TResult Function(LeaderboardError value)? error,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LeaderboardLoading value)? loading,
    TResult Function(LeaderboardLoaded value)? saved,
    TResult Function(LeaderboardError value)? error,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class LeaderboardLoaded implements LeaderboardState {
  const factory LeaderboardLoaded(final List<TriviaUser> listUser) =
      _$LeaderboardLoaded;

  List<TriviaUser> get listUser => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$LeaderboardLoadedCopyWith<_$LeaderboardLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LeaderboardErrorCopyWith<$Res> {
  factory _$$LeaderboardErrorCopyWith(
          _$LeaderboardError value, $Res Function(_$LeaderboardError) then) =
      __$$LeaderboardErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$LeaderboardErrorCopyWithImpl<$Res>
    extends _$LeaderboardStateCopyWithImpl<$Res>
    implements _$$LeaderboardErrorCopyWith<$Res> {
  __$$LeaderboardErrorCopyWithImpl(
      _$LeaderboardError _value, $Res Function(_$LeaderboardError) _then)
      : super(_value, (v) => _then(v as _$LeaderboardError));

  @override
  _$LeaderboardError get _value => super._value as _$LeaderboardError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$LeaderboardError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LeaderboardError implements LeaderboardError {
  const _$LeaderboardError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'LeaderboardState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaderboardError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$LeaderboardErrorCopyWith<_$LeaderboardError> get copyWith =>
      __$$LeaderboardErrorCopyWithImpl<_$LeaderboardError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<TriviaUser> listUser) saved,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<TriviaUser> listUser)? saved,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<TriviaUser> listUser)? saved,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LeaderboardLoading value) loading,
    required TResult Function(LeaderboardLoaded value) saved,
    required TResult Function(LeaderboardError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LeaderboardLoading value)? loading,
    TResult Function(LeaderboardLoaded value)? saved,
    TResult Function(LeaderboardError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LeaderboardLoading value)? loading,
    TResult Function(LeaderboardLoaded value)? saved,
    TResult Function(LeaderboardError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LeaderboardError implements LeaderboardState {
  const factory LeaderboardError(final String message) = _$LeaderboardError;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$LeaderboardErrorCopyWith<_$LeaderboardError> get copyWith =>
      throw _privateConstructorUsedError;
}
