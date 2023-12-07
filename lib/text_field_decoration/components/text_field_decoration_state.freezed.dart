// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_field_decoration_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TextFieldDecorationState {
  bool get showsIcon => throw _privateConstructorUsedError;
  Color? get iconColor => throw _privateConstructorUsedError;
  bool get showsLabel => throw _privateConstructorUsedError;
  bool get showsLabelText => throw _privateConstructorUsedError;

  /// Create a copy of TextFieldDecorationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TextFieldDecorationStateCopyWith<TextFieldDecorationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextFieldDecorationStateCopyWith<$Res> {
  factory $TextFieldDecorationStateCopyWith(TextFieldDecorationState value,
          $Res Function(TextFieldDecorationState) then) =
      _$TextFieldDecorationStateCopyWithImpl<$Res, TextFieldDecorationState>;
  @useResult
  $Res call(
      {bool showsIcon, Color? iconColor, bool showsLabel, bool showsLabelText});
}

/// @nodoc
class _$TextFieldDecorationStateCopyWithImpl<$Res,
        $Val extends TextFieldDecorationState>
    implements $TextFieldDecorationStateCopyWith<$Res> {
  _$TextFieldDecorationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TextFieldDecorationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showsIcon = null,
    Object? iconColor = freezed,
    Object? showsLabel = null,
    Object? showsLabelText = null,
  }) {
    return _then(_value.copyWith(
      showsIcon: null == showsIcon
          ? _value.showsIcon
          : showsIcon // ignore: cast_nullable_to_non_nullable
              as bool,
      iconColor: freezed == iconColor
          ? _value.iconColor
          : iconColor // ignore: cast_nullable_to_non_nullable
              as Color?,
      showsLabel: null == showsLabel
          ? _value.showsLabel
          : showsLabel // ignore: cast_nullable_to_non_nullable
              as bool,
      showsLabelText: null == showsLabelText
          ? _value.showsLabelText
          : showsLabelText // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TextFieldDecorationStateImplCopyWith<$Res>
    implements $TextFieldDecorationStateCopyWith<$Res> {
  factory _$$TextFieldDecorationStateImplCopyWith(
          _$TextFieldDecorationStateImpl value,
          $Res Function(_$TextFieldDecorationStateImpl) then) =
      __$$TextFieldDecorationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool showsIcon, Color? iconColor, bool showsLabel, bool showsLabelText});
}

/// @nodoc
class __$$TextFieldDecorationStateImplCopyWithImpl<$Res>
    extends _$TextFieldDecorationStateCopyWithImpl<$Res,
        _$TextFieldDecorationStateImpl>
    implements _$$TextFieldDecorationStateImplCopyWith<$Res> {
  __$$TextFieldDecorationStateImplCopyWithImpl(
      _$TextFieldDecorationStateImpl _value,
      $Res Function(_$TextFieldDecorationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TextFieldDecorationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showsIcon = null,
    Object? iconColor = freezed,
    Object? showsLabel = null,
    Object? showsLabelText = null,
  }) {
    return _then(_$TextFieldDecorationStateImpl(
      showsIcon: null == showsIcon
          ? _value.showsIcon
          : showsIcon // ignore: cast_nullable_to_non_nullable
              as bool,
      iconColor: freezed == iconColor
          ? _value.iconColor
          : iconColor // ignore: cast_nullable_to_non_nullable
              as Color?,
      showsLabel: null == showsLabel
          ? _value.showsLabel
          : showsLabel // ignore: cast_nullable_to_non_nullable
              as bool,
      showsLabelText: null == showsLabelText
          ? _value.showsLabelText
          : showsLabelText // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TextFieldDecorationStateImpl implements _TextFieldDecorationState {
  const _$TextFieldDecorationStateImpl(
      {this.showsIcon = false,
      this.iconColor,
      this.showsLabel = false,
      this.showsLabelText = false});

  @override
  @JsonKey()
  final bool showsIcon;
  @override
  final Color? iconColor;
  @override
  @JsonKey()
  final bool showsLabel;
  @override
  @JsonKey()
  final bool showsLabelText;

  @override
  String toString() {
    return 'TextFieldDecorationState(showsIcon: $showsIcon, iconColor: $iconColor, showsLabel: $showsLabel, showsLabelText: $showsLabelText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextFieldDecorationStateImpl &&
            (identical(other.showsIcon, showsIcon) ||
                other.showsIcon == showsIcon) &&
            (identical(other.iconColor, iconColor) ||
                other.iconColor == iconColor) &&
            (identical(other.showsLabel, showsLabel) ||
                other.showsLabel == showsLabel) &&
            (identical(other.showsLabelText, showsLabelText) ||
                other.showsLabelText == showsLabelText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, showsIcon, iconColor, showsLabel, showsLabelText);

  /// Create a copy of TextFieldDecorationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TextFieldDecorationStateImplCopyWith<_$TextFieldDecorationStateImpl>
      get copyWith => __$$TextFieldDecorationStateImplCopyWithImpl<
          _$TextFieldDecorationStateImpl>(this, _$identity);
}

abstract class _TextFieldDecorationState implements TextFieldDecorationState {
  const factory _TextFieldDecorationState(
      {final bool showsIcon,
      final Color? iconColor,
      final bool showsLabel,
      final bool showsLabelText}) = _$TextFieldDecorationStateImpl;

  @override
  bool get showsIcon;
  @override
  Color? get iconColor;
  @override
  bool get showsLabel;
  @override
  bool get showsLabelText;

  /// Create a copy of TextFieldDecorationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TextFieldDecorationStateImplCopyWith<_$TextFieldDecorationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
