// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of shelter_cubit_lib;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShelterState {
  List<Shelter>? get shelters => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Shelter>? shelters) init,
    required TResult Function(List<Shelter>? shelters) loading,
    required TResult Function(List<Shelter>? shelters) success,
    required TResult Function(List<Shelter>? shelters, Exception error) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Shelter>? shelters)? init,
    TResult? Function(List<Shelter>? shelters)? loading,
    TResult? Function(List<Shelter>? shelters)? success,
    TResult? Function(List<Shelter>? shelters, Exception error)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Shelter>? shelters)? init,
    TResult Function(List<Shelter>? shelters)? loading,
    TResult Function(List<Shelter>? shelters)? success,
    TResult Function(List<Shelter>? shelters, Exception error)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShelterStateCopyWith<ShelterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShelterStateCopyWith<$Res> {
  factory $ShelterStateCopyWith(
          ShelterState value, $Res Function(ShelterState) then) =
      _$ShelterStateCopyWithImpl<$Res, ShelterState>;
  @useResult
  $Res call({List<Shelter>? shelters});
}

/// @nodoc
class _$ShelterStateCopyWithImpl<$Res, $Val extends ShelterState>
    implements $ShelterStateCopyWith<$Res> {
  _$ShelterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shelters = freezed,
  }) {
    return _then(_value.copyWith(
      shelters: freezed == shelters
          ? _value.shelters
          : shelters // ignore: cast_nullable_to_non_nullable
              as List<Shelter>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitCopyWith<$Res> implements $ShelterStateCopyWith<$Res> {
  factory _$$InitCopyWith(_$Init value, $Res Function(_$Init) then) =
      __$$InitCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Shelter>? shelters});
}

/// @nodoc
class __$$InitCopyWithImpl<$Res>
    extends _$ShelterStateCopyWithImpl<$Res, _$Init>
    implements _$$InitCopyWith<$Res> {
  __$$InitCopyWithImpl(_$Init _value, $Res Function(_$Init) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shelters = freezed,
  }) {
    return _then(_$Init(
      freezed == shelters
          ? _value._shelters
          : shelters // ignore: cast_nullable_to_non_nullable
              as List<Shelter>?,
    ));
  }
}

/// @nodoc

class _$Init implements Init {
  const _$Init(final List<Shelter>? shelters) : _shelters = shelters;

  final List<Shelter>? _shelters;
  @override
  List<Shelter>? get shelters {
    final value = _shelters;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ShelterState.init(shelters: $shelters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Init &&
            const DeepCollectionEquality().equals(other._shelters, _shelters));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_shelters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitCopyWith<_$Init> get copyWith =>
      __$$InitCopyWithImpl<_$Init>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Shelter>? shelters) init,
    required TResult Function(List<Shelter>? shelters) loading,
    required TResult Function(List<Shelter>? shelters) success,
    required TResult Function(List<Shelter>? shelters, Exception error) failed,
  }) {
    return init(shelters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Shelter>? shelters)? init,
    TResult? Function(List<Shelter>? shelters)? loading,
    TResult? Function(List<Shelter>? shelters)? success,
    TResult? Function(List<Shelter>? shelters, Exception error)? failed,
  }) {
    return init?.call(shelters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Shelter>? shelters)? init,
    TResult Function(List<Shelter>? shelters)? loading,
    TResult Function(List<Shelter>? shelters)? success,
    TResult Function(List<Shelter>? shelters, Exception error)? failed,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(shelters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Failed value) failed,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Failed value)? failed,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failed value)? failed,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements ShelterState {
  const factory Init(final List<Shelter>? shelters) = _$Init;

  @override
  List<Shelter>? get shelters;
  @override
  @JsonKey(ignore: true)
  _$$InitCopyWith<_$Init> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> implements $ShelterStateCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Shelter>? shelters});
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res>
    extends _$ShelterStateCopyWithImpl<$Res, _$Loading>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shelters = freezed,
  }) {
    return _then(_$Loading(
      freezed == shelters
          ? _value._shelters
          : shelters // ignore: cast_nullable_to_non_nullable
              as List<Shelter>?,
    ));
  }
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading(final List<Shelter>? shelters) : _shelters = shelters;

  final List<Shelter>? _shelters;
  @override
  List<Shelter>? get shelters {
    final value = _shelters;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ShelterState.loading(shelters: $shelters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Loading &&
            const DeepCollectionEquality().equals(other._shelters, _shelters));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_shelters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingCopyWith<_$Loading> get copyWith =>
      __$$LoadingCopyWithImpl<_$Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Shelter>? shelters) init,
    required TResult Function(List<Shelter>? shelters) loading,
    required TResult Function(List<Shelter>? shelters) success,
    required TResult Function(List<Shelter>? shelters, Exception error) failed,
  }) {
    return loading(shelters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Shelter>? shelters)? init,
    TResult? Function(List<Shelter>? shelters)? loading,
    TResult? Function(List<Shelter>? shelters)? success,
    TResult? Function(List<Shelter>? shelters, Exception error)? failed,
  }) {
    return loading?.call(shelters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Shelter>? shelters)? init,
    TResult Function(List<Shelter>? shelters)? loading,
    TResult Function(List<Shelter>? shelters)? success,
    TResult Function(List<Shelter>? shelters, Exception error)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(shelters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Failed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Failed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements ShelterState {
  const factory Loading(final List<Shelter>? shelters) = _$Loading;

  @override
  List<Shelter>? get shelters;
  @override
  @JsonKey(ignore: true)
  _$$LoadingCopyWith<_$Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessCopyWith<$Res> implements $ShelterStateCopyWith<$Res> {
  factory _$$SuccessCopyWith(_$Success value, $Res Function(_$Success) then) =
      __$$SuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Shelter>? shelters});
}

/// @nodoc
class __$$SuccessCopyWithImpl<$Res>
    extends _$ShelterStateCopyWithImpl<$Res, _$Success>
    implements _$$SuccessCopyWith<$Res> {
  __$$SuccessCopyWithImpl(_$Success _value, $Res Function(_$Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shelters = freezed,
  }) {
    return _then(_$Success(
      freezed == shelters
          ? _value._shelters
          : shelters // ignore: cast_nullable_to_non_nullable
              as List<Shelter>?,
    ));
  }
}

/// @nodoc

class _$Success implements Success {
  const _$Success(final List<Shelter>? shelters) : _shelters = shelters;

  final List<Shelter>? _shelters;
  @override
  List<Shelter>? get shelters {
    final value = _shelters;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ShelterState.success(shelters: $shelters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Success &&
            const DeepCollectionEquality().equals(other._shelters, _shelters));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_shelters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessCopyWith<_$Success> get copyWith =>
      __$$SuccessCopyWithImpl<_$Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Shelter>? shelters) init,
    required TResult Function(List<Shelter>? shelters) loading,
    required TResult Function(List<Shelter>? shelters) success,
    required TResult Function(List<Shelter>? shelters, Exception error) failed,
  }) {
    return success(shelters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Shelter>? shelters)? init,
    TResult? Function(List<Shelter>? shelters)? loading,
    TResult? Function(List<Shelter>? shelters)? success,
    TResult? Function(List<Shelter>? shelters, Exception error)? failed,
  }) {
    return success?.call(shelters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Shelter>? shelters)? init,
    TResult Function(List<Shelter>? shelters)? loading,
    TResult Function(List<Shelter>? shelters)? success,
    TResult Function(List<Shelter>? shelters, Exception error)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(shelters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Failed value) failed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Failed value)? failed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failed value)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements ShelterState {
  const factory Success(final List<Shelter>? shelters) = _$Success;

  @override
  List<Shelter>? get shelters;
  @override
  @JsonKey(ignore: true)
  _$$SuccessCopyWith<_$Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedCopyWith<$Res> implements $ShelterStateCopyWith<$Res> {
  factory _$$FailedCopyWith(_$Failed value, $Res Function(_$Failed) then) =
      __$$FailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Shelter>? shelters, Exception error});
}

/// @nodoc
class __$$FailedCopyWithImpl<$Res>
    extends _$ShelterStateCopyWithImpl<$Res, _$Failed>
    implements _$$FailedCopyWith<$Res> {
  __$$FailedCopyWithImpl(_$Failed _value, $Res Function(_$Failed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shelters = freezed,
    Object? error = null,
  }) {
    return _then(_$Failed(
      freezed == shelters
          ? _value._shelters
          : shelters // ignore: cast_nullable_to_non_nullable
              as List<Shelter>?,
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$Failed implements Failed {
  const _$Failed(final List<Shelter>? shelters, this.error)
      : _shelters = shelters;

  final List<Shelter>? _shelters;
  @override
  List<Shelter>? get shelters {
    final value = _shelters;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Exception error;

  @override
  String toString() {
    return 'ShelterState.failed(shelters: $shelters, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Failed &&
            const DeepCollectionEquality().equals(other._shelters, _shelters) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_shelters), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedCopyWith<_$Failed> get copyWith =>
      __$$FailedCopyWithImpl<_$Failed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Shelter>? shelters) init,
    required TResult Function(List<Shelter>? shelters) loading,
    required TResult Function(List<Shelter>? shelters) success,
    required TResult Function(List<Shelter>? shelters, Exception error) failed,
  }) {
    return failed(shelters, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Shelter>? shelters)? init,
    TResult? Function(List<Shelter>? shelters)? loading,
    TResult? Function(List<Shelter>? shelters)? success,
    TResult? Function(List<Shelter>? shelters, Exception error)? failed,
  }) {
    return failed?.call(shelters, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Shelter>? shelters)? init,
    TResult Function(List<Shelter>? shelters)? loading,
    TResult Function(List<Shelter>? shelters)? success,
    TResult Function(List<Shelter>? shelters, Exception error)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(shelters, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class Failed implements ShelterState {
  const factory Failed(final List<Shelter>? shelters, final Exception error) =
      _$Failed;

  @override
  List<Shelter>? get shelters;
  Exception get error;
  @override
  @JsonKey(ignore: true)
  _$$FailedCopyWith<_$Failed> get copyWith =>
      throw _privateConstructorUsedError;
}
