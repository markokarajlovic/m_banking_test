// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppState {
  Locale get currentLocale => throw _privateConstructorUsedError;
  LanguageEnum get languageEnum => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call({Locale currentLocale, LanguageEnum languageEnum});
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLocale = null,
    Object? languageEnum = null,
  }) {
    return _then(_value.copyWith(
      currentLocale: null == currentLocale
          ? _value.currentLocale
          : currentLocale // ignore: cast_nullable_to_non_nullable
              as Locale,
      languageEnum: null == languageEnum
          ? _value.languageEnum
          : languageEnum // ignore: cast_nullable_to_non_nullable
              as LanguageEnum,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppStateImplCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$$AppStateImplCopyWith(
          _$AppStateImpl value, $Res Function(_$AppStateImpl) then) =
      __$$AppStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Locale currentLocale, LanguageEnum languageEnum});
}

/// @nodoc
class __$$AppStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateImpl>
    implements _$$AppStateImplCopyWith<$Res> {
  __$$AppStateImplCopyWithImpl(
      _$AppStateImpl _value, $Res Function(_$AppStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLocale = null,
    Object? languageEnum = null,
  }) {
    return _then(_$AppStateImpl(
      currentLocale: null == currentLocale
          ? _value.currentLocale
          : currentLocale // ignore: cast_nullable_to_non_nullable
              as Locale,
      languageEnum: null == languageEnum
          ? _value.languageEnum
          : languageEnum // ignore: cast_nullable_to_non_nullable
              as LanguageEnum,
    ));
  }
}

/// @nodoc

class _$AppStateImpl extends _AppState {
  const _$AppStateImpl(
      {this.currentLocale = const Locale('sr'),
      this.languageEnum = LanguageEnum.srb})
      : super._();

  @override
  @JsonKey()
  final Locale currentLocale;
  @override
  @JsonKey()
  final LanguageEnum languageEnum;

  @override
  String toString() {
    return 'AppState(currentLocale: $currentLocale, languageEnum: $languageEnum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateImpl &&
            (identical(other.currentLocale, currentLocale) ||
                other.currentLocale == currentLocale) &&
            (identical(other.languageEnum, languageEnum) ||
                other.languageEnum == languageEnum));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentLocale, languageEnum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      __$$AppStateImplCopyWithImpl<_$AppStateImpl>(this, _$identity);
}

abstract class _AppState extends AppState {
  const factory _AppState(
      {final Locale currentLocale,
      final LanguageEnum languageEnum}) = _$AppStateImpl;
  const _AppState._() : super._();

  @override
  Locale get currentLocale;
  @override
  LanguageEnum get languageEnum;
  @override
  @JsonKey(ignore: true)
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
