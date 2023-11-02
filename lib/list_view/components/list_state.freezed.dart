// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ListState {
  ListViewConstructorType get constructorType =>
      throw _privateConstructorUsedError;
  Axis get scrollDirection => throw _privateConstructorUsedError;
  bool get reverse => throw _privateConstructorUsedError;
  bool get primary => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListStateCopyWith<ListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListStateCopyWith<$Res> {
  factory $ListStateCopyWith(ListState value, $Res Function(ListState) then) =
      _$ListStateCopyWithImpl<$Res, ListState>;
  @useResult
  $Res call(
      {ListViewConstructorType constructorType,
      Axis scrollDirection,
      bool reverse,
      bool primary});
}

/// @nodoc
class _$ListStateCopyWithImpl<$Res, $Val extends ListState>
    implements $ListStateCopyWith<$Res> {
  _$ListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? constructorType = null,
    Object? scrollDirection = null,
    Object? reverse = null,
    Object? primary = null,
  }) {
    return _then(_value.copyWith(
      constructorType: null == constructorType
          ? _value.constructorType
          : constructorType // ignore: cast_nullable_to_non_nullable
              as ListViewConstructorType,
      scrollDirection: null == scrollDirection
          ? _value.scrollDirection
          : scrollDirection // ignore: cast_nullable_to_non_nullable
              as Axis,
      reverse: null == reverse
          ? _value.reverse
          : reverse // ignore: cast_nullable_to_non_nullable
              as bool,
      primary: null == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListStateImplCopyWith<$Res>
    implements $ListStateCopyWith<$Res> {
  factory _$$ListStateImplCopyWith(
          _$ListStateImpl value, $Res Function(_$ListStateImpl) then) =
      __$$ListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ListViewConstructorType constructorType,
      Axis scrollDirection,
      bool reverse,
      bool primary});
}

/// @nodoc
class __$$ListStateImplCopyWithImpl<$Res>
    extends _$ListStateCopyWithImpl<$Res, _$ListStateImpl>
    implements _$$ListStateImplCopyWith<$Res> {
  __$$ListStateImplCopyWithImpl(
      _$ListStateImpl _value, $Res Function(_$ListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? constructorType = null,
    Object? scrollDirection = null,
    Object? reverse = null,
    Object? primary = null,
  }) {
    return _then(_$ListStateImpl(
      constructorType: null == constructorType
          ? _value.constructorType
          : constructorType // ignore: cast_nullable_to_non_nullable
              as ListViewConstructorType,
      scrollDirection: null == scrollDirection
          ? _value.scrollDirection
          : scrollDirection // ignore: cast_nullable_to_non_nullable
              as Axis,
      reverse: null == reverse
          ? _value.reverse
          : reverse // ignore: cast_nullable_to_non_nullable
              as bool,
      primary: null == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ListStateImpl implements _ListState {
  const _$ListStateImpl(
      {this.constructorType = ListViewConstructorType.normal,
      this.scrollDirection = Axis.vertical,
      this.reverse = false,
      this.primary = false});

  @override
  @JsonKey()
  final ListViewConstructorType constructorType;
  @override
  @JsonKey()
  final Axis scrollDirection;
  @override
  @JsonKey()
  final bool reverse;
  @override
  @JsonKey()
  final bool primary;

  @override
  String toString() {
    return 'ListState(constructorType: $constructorType, scrollDirection: $scrollDirection, reverse: $reverse, primary: $primary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListStateImpl &&
            (identical(other.constructorType, constructorType) ||
                other.constructorType == constructorType) &&
            (identical(other.scrollDirection, scrollDirection) ||
                other.scrollDirection == scrollDirection) &&
            (identical(other.reverse, reverse) || other.reverse == reverse) &&
            (identical(other.primary, primary) || other.primary == primary));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, constructorType, scrollDirection, reverse, primary);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListStateImplCopyWith<_$ListStateImpl> get copyWith =>
      __$$ListStateImplCopyWithImpl<_$ListStateImpl>(this, _$identity);
}

abstract class _ListState implements ListState {
  const factory _ListState(
      {final ListViewConstructorType constructorType,
      final Axis scrollDirection,
      final bool reverse,
      final bool primary}) = _$ListStateImpl;

  @override
  ListViewConstructorType get constructorType;
  @override
  Axis get scrollDirection;
  @override
  bool get reverse;
  @override
  bool get primary;
  @override
  @JsonKey(ignore: true)
  _$$ListStateImplCopyWith<_$ListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
