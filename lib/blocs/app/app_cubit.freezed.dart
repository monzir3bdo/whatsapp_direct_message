// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isDark) themeModeChange,
    required TResult Function(String language) languageChanged,
    required TResult Function(bool save) saveNumbersChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isDark)? themeModeChange,
    TResult? Function(String language)? languageChanged,
    TResult? Function(bool save)? saveNumbersChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isDark)? themeModeChange,
    TResult Function(String language)? languageChanged,
    TResult Function(bool save)? saveNumbersChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ThemeModeChange value) themeModeChange,
    required TResult Function(_LanguageChanged value) languageChanged,
    required TResult Function(_SaveNumberChanged value) saveNumbersChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ThemeModeChange value)? themeModeChange,
    TResult? Function(_LanguageChanged value)? languageChanged,
    TResult? Function(_SaveNumberChanged value)? saveNumbersChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ThemeModeChange value)? themeModeChange,
    TResult Function(_LanguageChanged value)? languageChanged,
    TResult Function(_SaveNumberChanged value)? saveNumbersChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AppState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isDark) themeModeChange,
    required TResult Function(String language) languageChanged,
    required TResult Function(bool save) saveNumbersChanged,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isDark)? themeModeChange,
    TResult? Function(String language)? languageChanged,
    TResult? Function(bool save)? saveNumbersChanged,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isDark)? themeModeChange,
    TResult Function(String language)? languageChanged,
    TResult Function(bool save)? saveNumbersChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ThemeModeChange value) themeModeChange,
    required TResult Function(_LanguageChanged value) languageChanged,
    required TResult Function(_SaveNumberChanged value) saveNumbersChanged,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ThemeModeChange value)? themeModeChange,
    TResult? Function(_LanguageChanged value)? languageChanged,
    TResult? Function(_SaveNumberChanged value)? saveNumbersChanged,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ThemeModeChange value)? themeModeChange,
    TResult Function(_LanguageChanged value)? languageChanged,
    TResult Function(_SaveNumberChanged value)? saveNumbersChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AppState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ThemeModeChangeImplCopyWith<$Res> {
  factory _$$ThemeModeChangeImplCopyWith(_$ThemeModeChangeImpl value,
          $Res Function(_$ThemeModeChangeImpl) then) =
      __$$ThemeModeChangeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isDark});
}

/// @nodoc
class __$$ThemeModeChangeImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$ThemeModeChangeImpl>
    implements _$$ThemeModeChangeImplCopyWith<$Res> {
  __$$ThemeModeChangeImplCopyWithImpl(
      _$ThemeModeChangeImpl _value, $Res Function(_$ThemeModeChangeImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDark = null,
  }) {
    return _then(_$ThemeModeChangeImpl(
      isDark: null == isDark
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ThemeModeChangeImpl implements _ThemeModeChange {
  const _$ThemeModeChangeImpl({required this.isDark});

  @override
  final bool isDark;

  @override
  String toString() {
    return 'AppState.themeModeChange(isDark: $isDark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeModeChangeImpl &&
            (identical(other.isDark, isDark) || other.isDark == isDark));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDark);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeModeChangeImplCopyWith<_$ThemeModeChangeImpl> get copyWith =>
      __$$ThemeModeChangeImplCopyWithImpl<_$ThemeModeChangeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isDark) themeModeChange,
    required TResult Function(String language) languageChanged,
    required TResult Function(bool save) saveNumbersChanged,
  }) {
    return themeModeChange(isDark);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isDark)? themeModeChange,
    TResult? Function(String language)? languageChanged,
    TResult? Function(bool save)? saveNumbersChanged,
  }) {
    return themeModeChange?.call(isDark);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isDark)? themeModeChange,
    TResult Function(String language)? languageChanged,
    TResult Function(bool save)? saveNumbersChanged,
    required TResult orElse(),
  }) {
    if (themeModeChange != null) {
      return themeModeChange(isDark);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ThemeModeChange value) themeModeChange,
    required TResult Function(_LanguageChanged value) languageChanged,
    required TResult Function(_SaveNumberChanged value) saveNumbersChanged,
  }) {
    return themeModeChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ThemeModeChange value)? themeModeChange,
    TResult? Function(_LanguageChanged value)? languageChanged,
    TResult? Function(_SaveNumberChanged value)? saveNumbersChanged,
  }) {
    return themeModeChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ThemeModeChange value)? themeModeChange,
    TResult Function(_LanguageChanged value)? languageChanged,
    TResult Function(_SaveNumberChanged value)? saveNumbersChanged,
    required TResult orElse(),
  }) {
    if (themeModeChange != null) {
      return themeModeChange(this);
    }
    return orElse();
  }
}

abstract class _ThemeModeChange implements AppState {
  const factory _ThemeModeChange({required final bool isDark}) =
      _$ThemeModeChangeImpl;

  bool get isDark;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ThemeModeChangeImplCopyWith<_$ThemeModeChangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LanguageChangedImplCopyWith<$Res> {
  factory _$$LanguageChangedImplCopyWith(_$LanguageChangedImpl value,
          $Res Function(_$LanguageChangedImpl) then) =
      __$$LanguageChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String language});
}

/// @nodoc
class __$$LanguageChangedImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$LanguageChangedImpl>
    implements _$$LanguageChangedImplCopyWith<$Res> {
  __$$LanguageChangedImplCopyWithImpl(
      _$LanguageChangedImpl _value, $Res Function(_$LanguageChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
  }) {
    return _then(_$LanguageChangedImpl(
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LanguageChangedImpl implements _LanguageChanged {
  const _$LanguageChangedImpl({required this.language});

  @override
  final String language;

  @override
  String toString() {
    return 'AppState.languageChanged(language: $language)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguageChangedImpl &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @override
  int get hashCode => Object.hash(runtimeType, language);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LanguageChangedImplCopyWith<_$LanguageChangedImpl> get copyWith =>
      __$$LanguageChangedImplCopyWithImpl<_$LanguageChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isDark) themeModeChange,
    required TResult Function(String language) languageChanged,
    required TResult Function(bool save) saveNumbersChanged,
  }) {
    return languageChanged(language);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isDark)? themeModeChange,
    TResult? Function(String language)? languageChanged,
    TResult? Function(bool save)? saveNumbersChanged,
  }) {
    return languageChanged?.call(language);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isDark)? themeModeChange,
    TResult Function(String language)? languageChanged,
    TResult Function(bool save)? saveNumbersChanged,
    required TResult orElse(),
  }) {
    if (languageChanged != null) {
      return languageChanged(language);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ThemeModeChange value) themeModeChange,
    required TResult Function(_LanguageChanged value) languageChanged,
    required TResult Function(_SaveNumberChanged value) saveNumbersChanged,
  }) {
    return languageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ThemeModeChange value)? themeModeChange,
    TResult? Function(_LanguageChanged value)? languageChanged,
    TResult? Function(_SaveNumberChanged value)? saveNumbersChanged,
  }) {
    return languageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ThemeModeChange value)? themeModeChange,
    TResult Function(_LanguageChanged value)? languageChanged,
    TResult Function(_SaveNumberChanged value)? saveNumbersChanged,
    required TResult orElse(),
  }) {
    if (languageChanged != null) {
      return languageChanged(this);
    }
    return orElse();
  }
}

abstract class _LanguageChanged implements AppState {
  const factory _LanguageChanged({required final String language}) =
      _$LanguageChangedImpl;

  String get language;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LanguageChangedImplCopyWith<_$LanguageChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveNumberChangedImplCopyWith<$Res> {
  factory _$$SaveNumberChangedImplCopyWith(_$SaveNumberChangedImpl value,
          $Res Function(_$SaveNumberChangedImpl) then) =
      __$$SaveNumberChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool save});
}

/// @nodoc
class __$$SaveNumberChangedImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$SaveNumberChangedImpl>
    implements _$$SaveNumberChangedImplCopyWith<$Res> {
  __$$SaveNumberChangedImplCopyWithImpl(_$SaveNumberChangedImpl _value,
      $Res Function(_$SaveNumberChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? save = null,
  }) {
    return _then(_$SaveNumberChangedImpl(
      save: null == save
          ? _value.save
          : save // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SaveNumberChangedImpl implements _SaveNumberChanged {
  const _$SaveNumberChangedImpl({required this.save});

  @override
  final bool save;

  @override
  String toString() {
    return 'AppState.saveNumbersChanged(save: $save)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveNumberChangedImpl &&
            (identical(other.save, save) || other.save == save));
  }

  @override
  int get hashCode => Object.hash(runtimeType, save);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveNumberChangedImplCopyWith<_$SaveNumberChangedImpl> get copyWith =>
      __$$SaveNumberChangedImplCopyWithImpl<_$SaveNumberChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isDark) themeModeChange,
    required TResult Function(String language) languageChanged,
    required TResult Function(bool save) saveNumbersChanged,
  }) {
    return saveNumbersChanged(save);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isDark)? themeModeChange,
    TResult? Function(String language)? languageChanged,
    TResult? Function(bool save)? saveNumbersChanged,
  }) {
    return saveNumbersChanged?.call(save);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isDark)? themeModeChange,
    TResult Function(String language)? languageChanged,
    TResult Function(bool save)? saveNumbersChanged,
    required TResult orElse(),
  }) {
    if (saveNumbersChanged != null) {
      return saveNumbersChanged(save);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ThemeModeChange value) themeModeChange,
    required TResult Function(_LanguageChanged value) languageChanged,
    required TResult Function(_SaveNumberChanged value) saveNumbersChanged,
  }) {
    return saveNumbersChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ThemeModeChange value)? themeModeChange,
    TResult? Function(_LanguageChanged value)? languageChanged,
    TResult? Function(_SaveNumberChanged value)? saveNumbersChanged,
  }) {
    return saveNumbersChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ThemeModeChange value)? themeModeChange,
    TResult Function(_LanguageChanged value)? languageChanged,
    TResult Function(_SaveNumberChanged value)? saveNumbersChanged,
    required TResult orElse(),
  }) {
    if (saveNumbersChanged != null) {
      return saveNumbersChanged(this);
    }
    return orElse();
  }
}

abstract class _SaveNumberChanged implements AppState {
  const factory _SaveNumberChanged({required final bool save}) =
      _$SaveNumberChangedImpl;

  bool get save;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveNumberChangedImplCopyWith<_$SaveNumberChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
