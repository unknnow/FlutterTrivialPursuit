// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GameState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Results> list) saved,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Results> list)? saved,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Results> list)? saved,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionLoading value) loading,
    required TResult Function(QuestionLoaded value) saved,
    required TResult Function(QuestionError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QuestionLoading value)? loading,
    TResult Function(QuestionLoaded value)? saved,
    TResult Function(QuestionError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionLoading value)? loading,
    TResult Function(QuestionLoaded value)? saved,
    TResult Function(QuestionError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStateCopyWith<$Res> {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) then) =
      _$GameStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GameStateCopyWithImpl<$Res> implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._value, this._then);

  final GameState _value;
  // ignore: unused_field
  final $Res Function(GameState) _then;
}

/// @nodoc
abstract class _$$QuestionLoadingCopyWith<$Res> {
  factory _$$QuestionLoadingCopyWith(
          _$QuestionLoading value, $Res Function(_$QuestionLoading) then) =
      __$$QuestionLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QuestionLoadingCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res>
    implements _$$QuestionLoadingCopyWith<$Res> {
  __$$QuestionLoadingCopyWithImpl(
      _$QuestionLoading _value, $Res Function(_$QuestionLoading) _then)
      : super(_value, (v) => _then(v as _$QuestionLoading));

  @override
  _$QuestionLoading get _value => super._value as _$QuestionLoading;
}

/// @nodoc

class _$QuestionLoading implements QuestionLoading {
  const _$QuestionLoading();

  @override
  String toString() {
    return 'GameState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$QuestionLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Results> list) saved,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Results> list)? saved,
    TResult Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Results> list)? saved,
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
    required TResult Function(QuestionLoading value) loading,
    required TResult Function(QuestionLoaded value) saved,
    required TResult Function(QuestionError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QuestionLoading value)? loading,
    TResult Function(QuestionLoaded value)? saved,
    TResult Function(QuestionError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionLoading value)? loading,
    TResult Function(QuestionLoaded value)? saved,
    TResult Function(QuestionError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class QuestionLoading implements GameState {
  const factory QuestionLoading() = _$QuestionLoading;
}

/// @nodoc
abstract class _$$QuestionLoadedCopyWith<$Res> {
  factory _$$QuestionLoadedCopyWith(
          _$QuestionLoaded value, $Res Function(_$QuestionLoaded) then) =
      __$$QuestionLoadedCopyWithImpl<$Res>;
  $Res call({List<Results> list});
}

/// @nodoc
class __$$QuestionLoadedCopyWithImpl<$Res> extends _$GameStateCopyWithImpl<$Res>
    implements _$$QuestionLoadedCopyWith<$Res> {
  __$$QuestionLoadedCopyWithImpl(
      _$QuestionLoaded _value, $Res Function(_$QuestionLoaded) _then)
      : super(_value, (v) => _then(v as _$QuestionLoaded));

  @override
  _$QuestionLoaded get _value => super._value as _$QuestionLoaded;

  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_$QuestionLoaded(
      list == freezed
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Results>,
    ));
  }
}

/// @nodoc

class _$QuestionLoaded implements QuestionLoaded {
  const _$QuestionLoaded(final List<Results> list) : _list = list;

  final List<Results> _list;
  @override
  List<Results> get list {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'GameState.saved(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionLoaded &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  _$$QuestionLoadedCopyWith<_$QuestionLoaded> get copyWith =>
      __$$QuestionLoadedCopyWithImpl<_$QuestionLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Results> list) saved,
    required TResult Function(String message) error,
  }) {
    return saved(list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Results> list)? saved,
    TResult Function(String message)? error,
  }) {
    return saved?.call(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Results> list)? saved,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionLoading value) loading,
    required TResult Function(QuestionLoaded value) saved,
    required TResult Function(QuestionError value) error,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QuestionLoading value)? loading,
    TResult Function(QuestionLoaded value)? saved,
    TResult Function(QuestionError value)? error,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionLoading value)? loading,
    TResult Function(QuestionLoaded value)? saved,
    TResult Function(QuestionError value)? error,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class QuestionLoaded implements GameState {
  const factory QuestionLoaded(final List<Results> list) = _$QuestionLoaded;

  List<Results> get list => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$QuestionLoadedCopyWith<_$QuestionLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuestionErrorCopyWith<$Res> {
  factory _$$QuestionErrorCopyWith(
          _$QuestionError value, $Res Function(_$QuestionError) then) =
      __$$QuestionErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$QuestionErrorCopyWithImpl<$Res> extends _$GameStateCopyWithImpl<$Res>
    implements _$$QuestionErrorCopyWith<$Res> {
  __$$QuestionErrorCopyWithImpl(
      _$QuestionError _value, $Res Function(_$QuestionError) _then)
      : super(_value, (v) => _then(v as _$QuestionError));

  @override
  _$QuestionError get _value => super._value as _$QuestionError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$QuestionError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$QuestionError implements QuestionError {
  const _$QuestionError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'GameState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$QuestionErrorCopyWith<_$QuestionError> get copyWith =>
      __$$QuestionErrorCopyWithImpl<_$QuestionError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Results> list) saved,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Results> list)? saved,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Results> list)? saved,
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
    required TResult Function(QuestionLoading value) loading,
    required TResult Function(QuestionLoaded value) saved,
    required TResult Function(QuestionError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QuestionLoading value)? loading,
    TResult Function(QuestionLoaded value)? saved,
    TResult Function(QuestionError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionLoading value)? loading,
    TResult Function(QuestionLoaded value)? saved,
    TResult Function(QuestionError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class QuestionError implements GameState {
  const factory QuestionError(final String message) = _$QuestionError;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$QuestionErrorCopyWith<_$QuestionError> get copyWith =>
      throw _privateConstructorUsedError;
}
