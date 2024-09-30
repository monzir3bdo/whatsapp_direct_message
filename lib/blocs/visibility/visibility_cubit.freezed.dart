// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'visibility_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VisibilityState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isVisible) visibilityChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isVisible)? visibilityChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isVisible)? visibilityChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_VisiblityChanged value) visibilityChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_VisiblityChanged value)? visibilityChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_VisiblityChanged value)? visibilityChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisibilityStateCopyWith<$Res> {
  factory $VisibilityStateCopyWith(
          VisibilityState value, $Res Function(VisibilityState) then) =
      _$VisibilityStateCopyWithImpl<$Res, VisibilityState>;
}

/// @nodoc
class _$VisibilityStateCopyWithImpl<$Res, $Val extends VisibilityState>
    implements $VisibilityStateCopyWith<$Res> {
  _$VisibilityStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VisibilityState
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
    extends _$VisibilityStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of VisibilityState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'VisibilityState.initial()';
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
    required TResult Function(bool isVisible) visibilityChanged,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isVisible)? visibilityChanged,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isVisible)? visibilityChanged,
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
    required TResult Function(_VisiblityChanged value) visibilityChanged,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_VisiblityChanged value)? visibilityChanged,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_VisiblityChanged value)? visibilityChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements VisibilityState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$VisiblityChangedImplCopyWith<$Res> {
  factory _$$VisiblityChangedImplCopyWith(_$VisiblityChangedImpl value,
          $Res Function(_$VisiblityChangedImpl) then) =
      __$$VisiblityChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isVisible});
}

/// @nodoc
class __$$VisiblityChangedImplCopyWithImpl<$Res>
    extends _$VisibilityStateCopyWithImpl<$Res, _$VisiblityChangedImpl>
    implements _$$VisiblityChangedImplCopyWith<$Res> {
  __$$VisiblityChangedImplCopyWithImpl(_$VisiblityChangedImpl _value,
      $Res Function(_$VisiblityChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of VisibilityState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isVisible = null,
  }) {
    return _then(_$VisiblityChangedImpl(
      isVisible: null == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$VisiblityChangedImpl implements _VisiblityChanged {
  const _$VisiblityChangedImpl({required this.isVisible});

  @override
  final bool isVisible;

  @override
  String toString() {
    return 'VisibilityState.visibilityChanged(isVisible: $isVisible)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VisiblityChangedImpl &&
            (identical(other.isVisible, isVisible) ||
                other.isVisible == isVisible));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isVisible);

  /// Create a copy of VisibilityState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VisiblityChangedImplCopyWith<_$VisiblityChangedImpl> get copyWith =>
      __$$VisiblityChangedImplCopyWithImpl<_$VisiblityChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isVisible) visibilityChanged,
  }) {
    return visibilityChanged(isVisible);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isVisible)? visibilityChanged,
  }) {
    return visibilityChanged?.call(isVisible);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isVisible)? visibilityChanged,
    required TResult orElse(),
  }) {
    if (visibilityChanged != null) {
      return visibilityChanged(isVisible);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_VisiblityChanged value) visibilityChanged,
  }) {
    return visibilityChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_VisiblityChanged value)? visibilityChanged,
  }) {
    return visibilityChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_VisiblityChanged value)? visibilityChanged,
    required TResult orElse(),
  }) {
    if (visibilityChanged != null) {
      return visibilityChanged(this);
    }
    return orElse();
  }
}

abstract class _VisiblityChanged implements VisibilityState {
  const factory _VisiblityChanged({required final bool isVisible}) =
      _$VisiblityChangedImpl;

  bool get isVisible;

  /// Create a copy of VisibilityState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VisiblityChangedImplCopyWith<_$VisiblityChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
