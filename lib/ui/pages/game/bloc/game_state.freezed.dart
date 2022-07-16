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
mixin _$GamesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Question> liste) saved,
    required TResult Function(String message) error,
    required TResult Function(String selectedAnswer, int indexQuestion)
        answerSelected,
    required TResult Function(
            bool isWrong, String? goodAnswer, int score, bool isFinish)
        wrongAnswer,
    required TResult Function(int score) gameFinish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Question> liste)? saved,
    TResult Function(String message)? error,
    TResult Function(String selectedAnswer, int indexQuestion)? answerSelected,
    TResult Function(
            bool isWrong, String? goodAnswer, int score, bool isFinish)?
        wrongAnswer,
    TResult Function(int score)? gameFinish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Question> liste)? saved,
    TResult Function(String message)? error,
    TResult Function(String selectedAnswer, int indexQuestion)? answerSelected,
    TResult Function(
            bool isWrong, String? goodAnswer, int score, bool isFinish)?
        wrongAnswer,
    TResult Function(int score)? gameFinish,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Saved value) saved,
    required TResult Function(Error value) error,
    required TResult Function(AnswerSelected value) answerSelected,
    required TResult Function(WrongAnswer value) wrongAnswer,
    required TResult Function(GameFinish value) gameFinish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Saved value)? saved,
    TResult Function(Error value)? error,
    TResult Function(AnswerSelected value)? answerSelected,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(GameFinish value)? gameFinish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Saved value)? saved,
    TResult Function(Error value)? error,
    TResult Function(AnswerSelected value)? answerSelected,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(GameFinish value)? gameFinish,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GamesStateCopyWith<$Res> {
  factory $GamesStateCopyWith(
          GamesState value, $Res Function(GamesState) then) =
      _$GamesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GamesStateCopyWithImpl<$Res> implements $GamesStateCopyWith<$Res> {
  _$GamesStateCopyWithImpl(this._value, this._then);

  final GamesState _value;
  // ignore: unused_field
  final $Res Function(GamesState) _then;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res> extends _$GamesStateCopyWithImpl<$Res>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, (v) => _then(v as _$Loading));

  @override
  _$Loading get _value => super._value as _$Loading;
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'GamesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Question> liste) saved,
    required TResult Function(String message) error,
    required TResult Function(String selectedAnswer, int indexQuestion)
        answerSelected,
    required TResult Function(
            bool isWrong, String? goodAnswer, int score, bool isFinish)
        wrongAnswer,
    required TResult Function(int score) gameFinish,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Question> liste)? saved,
    TResult Function(String message)? error,
    TResult Function(String selectedAnswer, int indexQuestion)? answerSelected,
    TResult Function(
            bool isWrong, String? goodAnswer, int score, bool isFinish)?
        wrongAnswer,
    TResult Function(int score)? gameFinish,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Question> liste)? saved,
    TResult Function(String message)? error,
    TResult Function(String selectedAnswer, int indexQuestion)? answerSelected,
    TResult Function(
            bool isWrong, String? goodAnswer, int score, bool isFinish)?
        wrongAnswer,
    TResult Function(int score)? gameFinish,
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
    required TResult Function(Loading value) loading,
    required TResult Function(Saved value) saved,
    required TResult Function(Error value) error,
    required TResult Function(AnswerSelected value) answerSelected,
    required TResult Function(WrongAnswer value) wrongAnswer,
    required TResult Function(GameFinish value) gameFinish,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Saved value)? saved,
    TResult Function(Error value)? error,
    TResult Function(AnswerSelected value)? answerSelected,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(GameFinish value)? gameFinish,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Saved value)? saved,
    TResult Function(Error value)? error,
    TResult Function(AnswerSelected value)? answerSelected,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(GameFinish value)? gameFinish,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements GamesState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class _$$SavedCopyWith<$Res> {
  factory _$$SavedCopyWith(_$Saved value, $Res Function(_$Saved) then) =
      __$$SavedCopyWithImpl<$Res>;
  $Res call({List<Question> liste});
}

/// @nodoc
class __$$SavedCopyWithImpl<$Res> extends _$GamesStateCopyWithImpl<$Res>
    implements _$$SavedCopyWith<$Res> {
  __$$SavedCopyWithImpl(_$Saved _value, $Res Function(_$Saved) _then)
      : super(_value, (v) => _then(v as _$Saved));

  @override
  _$Saved get _value => super._value as _$Saved;

  @override
  $Res call({
    Object? liste = freezed,
  }) {
    return _then(_$Saved(
      liste == freezed
          ? _value._liste
          : liste // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ));
  }
}

/// @nodoc

class _$Saved implements Saved {
  const _$Saved(final List<Question> liste) : _liste = liste;

  final List<Question> _liste;
  @override
  List<Question> get liste {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_liste);
  }

  @override
  String toString() {
    return 'GamesState.saved(liste: $liste)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Saved &&
            const DeepCollectionEquality().equals(other._liste, _liste));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_liste));

  @JsonKey(ignore: true)
  @override
  _$$SavedCopyWith<_$Saved> get copyWith =>
      __$$SavedCopyWithImpl<_$Saved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Question> liste) saved,
    required TResult Function(String message) error,
    required TResult Function(String selectedAnswer, int indexQuestion)
        answerSelected,
    required TResult Function(
            bool isWrong, String? goodAnswer, int score, bool isFinish)
        wrongAnswer,
    required TResult Function(int score) gameFinish,
  }) {
    return saved(liste);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Question> liste)? saved,
    TResult Function(String message)? error,
    TResult Function(String selectedAnswer, int indexQuestion)? answerSelected,
    TResult Function(
            bool isWrong, String? goodAnswer, int score, bool isFinish)?
        wrongAnswer,
    TResult Function(int score)? gameFinish,
  }) {
    return saved?.call(liste);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Question> liste)? saved,
    TResult Function(String message)? error,
    TResult Function(String selectedAnswer, int indexQuestion)? answerSelected,
    TResult Function(
            bool isWrong, String? goodAnswer, int score, bool isFinish)?
        wrongAnswer,
    TResult Function(int score)? gameFinish,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(liste);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Saved value) saved,
    required TResult Function(Error value) error,
    required TResult Function(AnswerSelected value) answerSelected,
    required TResult Function(WrongAnswer value) wrongAnswer,
    required TResult Function(GameFinish value) gameFinish,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Saved value)? saved,
    TResult Function(Error value)? error,
    TResult Function(AnswerSelected value)? answerSelected,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(GameFinish value)? gameFinish,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Saved value)? saved,
    TResult Function(Error value)? error,
    TResult Function(AnswerSelected value)? answerSelected,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(GameFinish value)? gameFinish,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class Saved implements GamesState {
  const factory Saved(final List<Question> liste) = _$Saved;

  List<Question> get liste => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$SavedCopyWith<_$Saved> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res> extends _$GamesStateCopyWithImpl<$Res>
    implements _$$ErrorCopyWith<$Res> {
  __$$ErrorCopyWithImpl(_$Error _value, $Res Function(_$Error) _then)
      : super(_value, (v) => _then(v as _$Error));

  @override
  _$Error get _value => super._value as _$Error;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$Error(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'GamesState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Error &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$ErrorCopyWith<_$Error> get copyWith =>
      __$$ErrorCopyWithImpl<_$Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Question> liste) saved,
    required TResult Function(String message) error,
    required TResult Function(String selectedAnswer, int indexQuestion)
        answerSelected,
    required TResult Function(
            bool isWrong, String? goodAnswer, int score, bool isFinish)
        wrongAnswer,
    required TResult Function(int score) gameFinish,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Question> liste)? saved,
    TResult Function(String message)? error,
    TResult Function(String selectedAnswer, int indexQuestion)? answerSelected,
    TResult Function(
            bool isWrong, String? goodAnswer, int score, bool isFinish)?
        wrongAnswer,
    TResult Function(int score)? gameFinish,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Question> liste)? saved,
    TResult Function(String message)? error,
    TResult Function(String selectedAnswer, int indexQuestion)? answerSelected,
    TResult Function(
            bool isWrong, String? goodAnswer, int score, bool isFinish)?
        wrongAnswer,
    TResult Function(int score)? gameFinish,
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
    required TResult Function(Loading value) loading,
    required TResult Function(Saved value) saved,
    required TResult Function(Error value) error,
    required TResult Function(AnswerSelected value) answerSelected,
    required TResult Function(WrongAnswer value) wrongAnswer,
    required TResult Function(GameFinish value) gameFinish,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Saved value)? saved,
    TResult Function(Error value)? error,
    TResult Function(AnswerSelected value)? answerSelected,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(GameFinish value)? gameFinish,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Saved value)? saved,
    TResult Function(Error value)? error,
    TResult Function(AnswerSelected value)? answerSelected,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(GameFinish value)? gameFinish,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements GamesState {
  const factory Error(final String message) = _$Error;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<_$Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AnswerSelectedCopyWith<$Res> {
  factory _$$AnswerSelectedCopyWith(
          _$AnswerSelected value, $Res Function(_$AnswerSelected) then) =
      __$$AnswerSelectedCopyWithImpl<$Res>;
  $Res call({String selectedAnswer, int indexQuestion});
}

/// @nodoc
class __$$AnswerSelectedCopyWithImpl<$Res>
    extends _$GamesStateCopyWithImpl<$Res>
    implements _$$AnswerSelectedCopyWith<$Res> {
  __$$AnswerSelectedCopyWithImpl(
      _$AnswerSelected _value, $Res Function(_$AnswerSelected) _then)
      : super(_value, (v) => _then(v as _$AnswerSelected));

  @override
  _$AnswerSelected get _value => super._value as _$AnswerSelected;

  @override
  $Res call({
    Object? selectedAnswer = freezed,
    Object? indexQuestion = freezed,
  }) {
    return _then(_$AnswerSelected(
      selectedAnswer == freezed
          ? _value.selectedAnswer
          : selectedAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      indexQuestion == freezed
          ? _value.indexQuestion
          : indexQuestion // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AnswerSelected implements AnswerSelected {
  const _$AnswerSelected(this.selectedAnswer, this.indexQuestion);

  @override
  final String selectedAnswer;
  @override
  final int indexQuestion;

  @override
  String toString() {
    return 'GamesState.answerSelected(selectedAnswer: $selectedAnswer, indexQuestion: $indexQuestion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerSelected &&
            const DeepCollectionEquality()
                .equals(other.selectedAnswer, selectedAnswer) &&
            const DeepCollectionEquality()
                .equals(other.indexQuestion, indexQuestion));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(selectedAnswer),
      const DeepCollectionEquality().hash(indexQuestion));

  @JsonKey(ignore: true)
  @override
  _$$AnswerSelectedCopyWith<_$AnswerSelected> get copyWith =>
      __$$AnswerSelectedCopyWithImpl<_$AnswerSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Question> liste) saved,
    required TResult Function(String message) error,
    required TResult Function(String selectedAnswer, int indexQuestion)
        answerSelected,
    required TResult Function(
            bool isWrong, String? goodAnswer, int score, bool isFinish)
        wrongAnswer,
    required TResult Function(int score) gameFinish,
  }) {
    return answerSelected(selectedAnswer, indexQuestion);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Question> liste)? saved,
    TResult Function(String message)? error,
    TResult Function(String selectedAnswer, int indexQuestion)? answerSelected,
    TResult Function(
            bool isWrong, String? goodAnswer, int score, bool isFinish)?
        wrongAnswer,
    TResult Function(int score)? gameFinish,
  }) {
    return answerSelected?.call(selectedAnswer, indexQuestion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Question> liste)? saved,
    TResult Function(String message)? error,
    TResult Function(String selectedAnswer, int indexQuestion)? answerSelected,
    TResult Function(
            bool isWrong, String? goodAnswer, int score, bool isFinish)?
        wrongAnswer,
    TResult Function(int score)? gameFinish,
    required TResult orElse(),
  }) {
    if (answerSelected != null) {
      return answerSelected(selectedAnswer, indexQuestion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Saved value) saved,
    required TResult Function(Error value) error,
    required TResult Function(AnswerSelected value) answerSelected,
    required TResult Function(WrongAnswer value) wrongAnswer,
    required TResult Function(GameFinish value) gameFinish,
  }) {
    return answerSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Saved value)? saved,
    TResult Function(Error value)? error,
    TResult Function(AnswerSelected value)? answerSelected,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(GameFinish value)? gameFinish,
  }) {
    return answerSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Saved value)? saved,
    TResult Function(Error value)? error,
    TResult Function(AnswerSelected value)? answerSelected,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(GameFinish value)? gameFinish,
    required TResult orElse(),
  }) {
    if (answerSelected != null) {
      return answerSelected(this);
    }
    return orElse();
  }
}

abstract class AnswerSelected implements GamesState {
  const factory AnswerSelected(
      final String selectedAnswer, final int indexQuestion) = _$AnswerSelected;

  String get selectedAnswer => throw _privateConstructorUsedError;
  int get indexQuestion => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$AnswerSelectedCopyWith<_$AnswerSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WrongAnswerCopyWith<$Res> {
  factory _$$WrongAnswerCopyWith(
          _$WrongAnswer value, $Res Function(_$WrongAnswer) then) =
      __$$WrongAnswerCopyWithImpl<$Res>;
  $Res call({bool isWrong, String? goodAnswer, int score, bool isFinish});
}

/// @nodoc
class __$$WrongAnswerCopyWithImpl<$Res> extends _$GamesStateCopyWithImpl<$Res>
    implements _$$WrongAnswerCopyWith<$Res> {
  __$$WrongAnswerCopyWithImpl(
      _$WrongAnswer _value, $Res Function(_$WrongAnswer) _then)
      : super(_value, (v) => _then(v as _$WrongAnswer));

  @override
  _$WrongAnswer get _value => super._value as _$WrongAnswer;

  @override
  $Res call({
    Object? isWrong = freezed,
    Object? goodAnswer = freezed,
    Object? score = freezed,
    Object? isFinish = freezed,
  }) {
    return _then(_$WrongAnswer(
      isWrong == freezed
          ? _value.isWrong
          : isWrong // ignore: cast_nullable_to_non_nullable
              as bool,
      goodAnswer == freezed
          ? _value.goodAnswer
          : goodAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
      score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      isFinish == freezed
          ? _value.isFinish
          : isFinish // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$WrongAnswer implements WrongAnswer {
  const _$WrongAnswer(this.isWrong, this.goodAnswer, this.score, this.isFinish);

  @override
  final bool isWrong;
  @override
  final String? goodAnswer;
  @override
  final int score;
  @override
  final bool isFinish;

  @override
  String toString() {
    return 'GamesState.wrongAnswer(isWrong: $isWrong, goodAnswer: $goodAnswer, score: $score, isFinish: $isFinish)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WrongAnswer &&
            const DeepCollectionEquality().equals(other.isWrong, isWrong) &&
            const DeepCollectionEquality()
                .equals(other.goodAnswer, goodAnswer) &&
            const DeepCollectionEquality().equals(other.score, score) &&
            const DeepCollectionEquality().equals(other.isFinish, isFinish));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isWrong),
      const DeepCollectionEquality().hash(goodAnswer),
      const DeepCollectionEquality().hash(score),
      const DeepCollectionEquality().hash(isFinish));

  @JsonKey(ignore: true)
  @override
  _$$WrongAnswerCopyWith<_$WrongAnswer> get copyWith =>
      __$$WrongAnswerCopyWithImpl<_$WrongAnswer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Question> liste) saved,
    required TResult Function(String message) error,
    required TResult Function(String selectedAnswer, int indexQuestion)
        answerSelected,
    required TResult Function(
            bool isWrong, String? goodAnswer, int score, bool isFinish)
        wrongAnswer,
    required TResult Function(int score) gameFinish,
  }) {
    return wrongAnswer(isWrong, goodAnswer, score, isFinish);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Question> liste)? saved,
    TResult Function(String message)? error,
    TResult Function(String selectedAnswer, int indexQuestion)? answerSelected,
    TResult Function(
            bool isWrong, String? goodAnswer, int score, bool isFinish)?
        wrongAnswer,
    TResult Function(int score)? gameFinish,
  }) {
    return wrongAnswer?.call(isWrong, goodAnswer, score, isFinish);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Question> liste)? saved,
    TResult Function(String message)? error,
    TResult Function(String selectedAnswer, int indexQuestion)? answerSelected,
    TResult Function(
            bool isWrong, String? goodAnswer, int score, bool isFinish)?
        wrongAnswer,
    TResult Function(int score)? gameFinish,
    required TResult orElse(),
  }) {
    if (wrongAnswer != null) {
      return wrongAnswer(isWrong, goodAnswer, score, isFinish);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Saved value) saved,
    required TResult Function(Error value) error,
    required TResult Function(AnswerSelected value) answerSelected,
    required TResult Function(WrongAnswer value) wrongAnswer,
    required TResult Function(GameFinish value) gameFinish,
  }) {
    return wrongAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Saved value)? saved,
    TResult Function(Error value)? error,
    TResult Function(AnswerSelected value)? answerSelected,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(GameFinish value)? gameFinish,
  }) {
    return wrongAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Saved value)? saved,
    TResult Function(Error value)? error,
    TResult Function(AnswerSelected value)? answerSelected,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(GameFinish value)? gameFinish,
    required TResult orElse(),
  }) {
    if (wrongAnswer != null) {
      return wrongAnswer(this);
    }
    return orElse();
  }
}

abstract class WrongAnswer implements GamesState {
  const factory WrongAnswer(final bool isWrong, final String? goodAnswer,
      final int score, final bool isFinish) = _$WrongAnswer;

  bool get isWrong => throw _privateConstructorUsedError;
  String? get goodAnswer => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;
  bool get isFinish => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$WrongAnswerCopyWith<_$WrongAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GameFinishCopyWith<$Res> {
  factory _$$GameFinishCopyWith(
          _$GameFinish value, $Res Function(_$GameFinish) then) =
      __$$GameFinishCopyWithImpl<$Res>;
  $Res call({int score});
}

/// @nodoc
class __$$GameFinishCopyWithImpl<$Res> extends _$GamesStateCopyWithImpl<$Res>
    implements _$$GameFinishCopyWith<$Res> {
  __$$GameFinishCopyWithImpl(
      _$GameFinish _value, $Res Function(_$GameFinish) _then)
      : super(_value, (v) => _then(v as _$GameFinish));

  @override
  _$GameFinish get _value => super._value as _$GameFinish;

  @override
  $Res call({
    Object? score = freezed,
  }) {
    return _then(_$GameFinish(
      score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GameFinish implements GameFinish {
  const _$GameFinish(this.score);

  @override
  final int score;

  @override
  String toString() {
    return 'GamesState.gameFinish(score: $score)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameFinish &&
            const DeepCollectionEquality().equals(other.score, score));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(score));

  @JsonKey(ignore: true)
  @override
  _$$GameFinishCopyWith<_$GameFinish> get copyWith =>
      __$$GameFinishCopyWithImpl<_$GameFinish>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Question> liste) saved,
    required TResult Function(String message) error,
    required TResult Function(String selectedAnswer, int indexQuestion)
        answerSelected,
    required TResult Function(
            bool isWrong, String? goodAnswer, int score, bool isFinish)
        wrongAnswer,
    required TResult Function(int score) gameFinish,
  }) {
    return gameFinish(score);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Question> liste)? saved,
    TResult Function(String message)? error,
    TResult Function(String selectedAnswer, int indexQuestion)? answerSelected,
    TResult Function(
            bool isWrong, String? goodAnswer, int score, bool isFinish)?
        wrongAnswer,
    TResult Function(int score)? gameFinish,
  }) {
    return gameFinish?.call(score);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Question> liste)? saved,
    TResult Function(String message)? error,
    TResult Function(String selectedAnswer, int indexQuestion)? answerSelected,
    TResult Function(
            bool isWrong, String? goodAnswer, int score, bool isFinish)?
        wrongAnswer,
    TResult Function(int score)? gameFinish,
    required TResult orElse(),
  }) {
    if (gameFinish != null) {
      return gameFinish(score);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Saved value) saved,
    required TResult Function(Error value) error,
    required TResult Function(AnswerSelected value) answerSelected,
    required TResult Function(WrongAnswer value) wrongAnswer,
    required TResult Function(GameFinish value) gameFinish,
  }) {
    return gameFinish(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Saved value)? saved,
    TResult Function(Error value)? error,
    TResult Function(AnswerSelected value)? answerSelected,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(GameFinish value)? gameFinish,
  }) {
    return gameFinish?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Saved value)? saved,
    TResult Function(Error value)? error,
    TResult Function(AnswerSelected value)? answerSelected,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(GameFinish value)? gameFinish,
    required TResult orElse(),
  }) {
    if (gameFinish != null) {
      return gameFinish(this);
    }
    return orElse();
  }
}

abstract class GameFinish implements GamesState {
  const factory GameFinish(final int score) = _$GameFinish;

  int get score => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$GameFinishCopyWith<_$GameFinish> get copyWith =>
      throw _privateConstructorUsedError;
}
