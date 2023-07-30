// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'translator_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TranslatorPageState {
  String get input => throw _privateConstructorUsedError;
  String get output => throw _privateConstructorUsedError;
  String get fromLanguage => throw _privateConstructorUsedError;
  String get toLanguage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TranslatorPageStateCopyWith<TranslatorPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranslatorPageStateCopyWith<$Res> {
  factory $TranslatorPageStateCopyWith(
          TranslatorPageState value, $Res Function(TranslatorPageState) then) =
      _$TranslatorPageStateCopyWithImpl<$Res, TranslatorPageState>;
  @useResult
  $Res call(
      {String input, String output, String fromLanguage, String toLanguage});
}

/// @nodoc
class _$TranslatorPageStateCopyWithImpl<$Res, $Val extends TranslatorPageState>
    implements $TranslatorPageStateCopyWith<$Res> {
  _$TranslatorPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
    Object? output = null,
    Object? fromLanguage = null,
    Object? toLanguage = null,
  }) {
    return _then(_value.copyWith(
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
      output: null == output
          ? _value.output
          : output // ignore: cast_nullable_to_non_nullable
              as String,
      fromLanguage: null == fromLanguage
          ? _value.fromLanguage
          : fromLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      toLanguage: null == toLanguage
          ? _value.toLanguage
          : toLanguage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TranslatorPageStateCopyWith<$Res>
    implements $TranslatorPageStateCopyWith<$Res> {
  factory _$$_TranslatorPageStateCopyWith(_$_TranslatorPageState value,
          $Res Function(_$_TranslatorPageState) then) =
      __$$_TranslatorPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String input, String output, String fromLanguage, String toLanguage});
}

/// @nodoc
class __$$_TranslatorPageStateCopyWithImpl<$Res>
    extends _$TranslatorPageStateCopyWithImpl<$Res, _$_TranslatorPageState>
    implements _$$_TranslatorPageStateCopyWith<$Res> {
  __$$_TranslatorPageStateCopyWithImpl(_$_TranslatorPageState _value,
      $Res Function(_$_TranslatorPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
    Object? output = null,
    Object? fromLanguage = null,
    Object? toLanguage = null,
  }) {
    return _then(_$_TranslatorPageState(
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
      output: null == output
          ? _value.output
          : output // ignore: cast_nullable_to_non_nullable
              as String,
      fromLanguage: null == fromLanguage
          ? _value.fromLanguage
          : fromLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      toLanguage: null == toLanguage
          ? _value.toLanguage
          : toLanguage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TranslatorPageState extends _TranslatorPageState {
  const _$_TranslatorPageState(
      {required this.input,
      required this.output,
      this.fromLanguage = 'auto',
      required this.toLanguage})
      : super._();

  @override
  final String input;
  @override
  final String output;
  @override
  @JsonKey()
  final String fromLanguage;
  @override
  final String toLanguage;

  @override
  String toString() {
    return 'TranslatorPageState(input: $input, output: $output, fromLanguage: $fromLanguage, toLanguage: $toLanguage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TranslatorPageState &&
            (identical(other.input, input) || other.input == input) &&
            (identical(other.output, output) || other.output == output) &&
            (identical(other.fromLanguage, fromLanguage) ||
                other.fromLanguage == fromLanguage) &&
            (identical(other.toLanguage, toLanguage) ||
                other.toLanguage == toLanguage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, input, output, fromLanguage, toLanguage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TranslatorPageStateCopyWith<_$_TranslatorPageState> get copyWith =>
      __$$_TranslatorPageStateCopyWithImpl<_$_TranslatorPageState>(
          this, _$identity);
}

abstract class _TranslatorPageState extends TranslatorPageState {
  const factory _TranslatorPageState(
      {required final String input,
      required final String output,
      final String fromLanguage,
      required final String toLanguage}) = _$_TranslatorPageState;
  const _TranslatorPageState._() : super._();

  @override
  String get input;
  @override
  String get output;
  @override
  String get fromLanguage;
  @override
  String get toLanguage;
  @override
  @JsonKey(ignore: true)
  _$$_TranslatorPageStateCopyWith<_$_TranslatorPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
