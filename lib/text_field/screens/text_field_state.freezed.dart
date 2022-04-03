// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'text_field_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TextFieldState {
  bool get readonly => throw _privateConstructorUsedError;
  bool get showCursor => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TextFieldStateCopyWith<TextFieldState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextFieldStateCopyWith<$Res> {
  factory $TextFieldStateCopyWith(
          TextFieldState value, $Res Function(TextFieldState) then) =
      _$TextFieldStateCopyWithImpl<$Res>;
  $Res call({bool readonly, bool showCursor});
}

/// @nodoc
class _$TextFieldStateCopyWithImpl<$Res>
    implements $TextFieldStateCopyWith<$Res> {
  _$TextFieldStateCopyWithImpl(this._value, this._then);

  final TextFieldState _value;
  // ignore: unused_field
  final $Res Function(TextFieldState) _then;

  @override
  $Res call({
    Object? readonly = freezed,
    Object? showCursor = freezed,
  }) {
    return _then(_value.copyWith(
      readonly: readonly == freezed
          ? _value.readonly
          : readonly // ignore: cast_nullable_to_non_nullable
              as bool,
      showCursor: showCursor == freezed
          ? _value.showCursor
          : showCursor // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_TextFieldStateCopyWith<$Res>
    implements $TextFieldStateCopyWith<$Res> {
  factory _$$_TextFieldStateCopyWith(
          _$_TextFieldState value, $Res Function(_$_TextFieldState) then) =
      __$$_TextFieldStateCopyWithImpl<$Res>;
  @override
  $Res call({bool readonly, bool showCursor});
}

/// @nodoc
class __$$_TextFieldStateCopyWithImpl<$Res>
    extends _$TextFieldStateCopyWithImpl<$Res>
    implements _$$_TextFieldStateCopyWith<$Res> {
  __$$_TextFieldStateCopyWithImpl(
      _$_TextFieldState _value, $Res Function(_$_TextFieldState) _then)
      : super(_value, (v) => _then(v as _$_TextFieldState));

  @override
  _$_TextFieldState get _value => super._value as _$_TextFieldState;

  @override
  $Res call({
    Object? readonly = freezed,
    Object? showCursor = freezed,
  }) {
    return _then(_$_TextFieldState(
      readonly: readonly == freezed
          ? _value.readonly
          : readonly // ignore: cast_nullable_to_non_nullable
              as bool,
      showCursor: showCursor == freezed
          ? _value.showCursor
          : showCursor // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TextFieldState implements _TextFieldState {
  const _$_TextFieldState({this.readonly = false, this.showCursor = true});

  @override
  @JsonKey()
  final bool readonly;
  @override
  @JsonKey()
  final bool showCursor;

  @override
  String toString() {
    return 'TextFieldState(readonly: $readonly, showCursor: $showCursor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TextFieldState &&
            const DeepCollectionEquality().equals(other.readonly, readonly) &&
            const DeepCollectionEquality()
                .equals(other.showCursor, showCursor));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(readonly),
      const DeepCollectionEquality().hash(showCursor));

  @JsonKey(ignore: true)
  @override
  _$$_TextFieldStateCopyWith<_$_TextFieldState> get copyWith =>
      __$$_TextFieldStateCopyWithImpl<_$_TextFieldState>(this, _$identity);
}

abstract class _TextFieldState implements TextFieldState {
  const factory _TextFieldState({final bool readonly, final bool showCursor}) =
      _$_TextFieldState;

  @override
  bool get readonly;
  @override
  bool get showCursor;
  @override
  @JsonKey(ignore: true)
  _$$_TextFieldStateCopyWith<_$_TextFieldState> get copyWith =>
      throw _privateConstructorUsedError;
}
