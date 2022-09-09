// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'selectable_text_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SelectableTextState {
  bool get showCursor => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SelectableTextStateCopyWith<SelectableTextState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectableTextStateCopyWith<$Res> {
  factory $SelectableTextStateCopyWith(
          SelectableTextState value, $Res Function(SelectableTextState) then) =
      _$SelectableTextStateCopyWithImpl<$Res>;
  $Res call({bool showCursor});
}

/// @nodoc
class _$SelectableTextStateCopyWithImpl<$Res>
    implements $SelectableTextStateCopyWith<$Res> {
  _$SelectableTextStateCopyWithImpl(this._value, this._then);

  final SelectableTextState _value;
  // ignore: unused_field
  final $Res Function(SelectableTextState) _then;

  @override
  $Res call({
    Object? showCursor = freezed,
  }) {
    return _then(_value.copyWith(
      showCursor: showCursor == freezed
          ? _value.showCursor
          : showCursor // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_SelectableTextStateCopyWith<$Res>
    implements $SelectableTextStateCopyWith<$Res> {
  factory _$$_SelectableTextStateCopyWith(_$_SelectableTextState value,
          $Res Function(_$_SelectableTextState) then) =
      __$$_SelectableTextStateCopyWithImpl<$Res>;
  @override
  $Res call({bool showCursor});
}

/// @nodoc
class __$$_SelectableTextStateCopyWithImpl<$Res>
    extends _$SelectableTextStateCopyWithImpl<$Res>
    implements _$$_SelectableTextStateCopyWith<$Res> {
  __$$_SelectableTextStateCopyWithImpl(_$_SelectableTextState _value,
      $Res Function(_$_SelectableTextState) _then)
      : super(_value, (v) => _then(v as _$_SelectableTextState));

  @override
  _$_SelectableTextState get _value => super._value as _$_SelectableTextState;

  @override
  $Res call({
    Object? showCursor = freezed,
  }) {
    return _then(_$_SelectableTextState(
      showCursor: showCursor == freezed
          ? _value.showCursor
          : showCursor // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SelectableTextState implements _SelectableTextState {
  const _$_SelectableTextState({this.showCursor = false});

  @override
  @JsonKey()
  final bool showCursor;

  @override
  String toString() {
    return 'SelectableTextState(showCursor: $showCursor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectableTextState &&
            const DeepCollectionEquality()
                .equals(other.showCursor, showCursor));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(showCursor));

  @JsonKey(ignore: true)
  @override
  _$$_SelectableTextStateCopyWith<_$_SelectableTextState> get copyWith =>
      __$$_SelectableTextStateCopyWithImpl<_$_SelectableTextState>(
          this, _$identity);
}

abstract class _SelectableTextState implements SelectableTextState {
  const factory _SelectableTextState({final bool showCursor}) =
      _$_SelectableTextState;

  @override
  bool get showCursor;
  @override
  @JsonKey(ignore: true)
  _$$_SelectableTextStateCopyWith<_$_SelectableTextState> get copyWith =>
      throw _privateConstructorUsedError;
}
