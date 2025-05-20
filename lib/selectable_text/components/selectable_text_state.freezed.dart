// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selectable_text_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SelectableTextState {

 bool get showCursor; double get cursorWidth; double? get cursorHeight; Radius? get cursorRadius; BoxWidthStyle get selectionWidthStyle; BoxHeightStyle get selectionHeightStyle; DragStartBehavior get dragStartBehavior; bool get enableInteractiveSelection; TextSelectionControls? get selectionControls; ScrollPhysics? get scrollPhysics; TextWidthBasis? get textWidthBasis;
/// Create a copy of SelectableTextState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectableTextStateCopyWith<SelectableTextState> get copyWith => _$SelectableTextStateCopyWithImpl<SelectableTextState>(this as SelectableTextState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectableTextState&&(identical(other.showCursor, showCursor) || other.showCursor == showCursor)&&(identical(other.cursorWidth, cursorWidth) || other.cursorWidth == cursorWidth)&&(identical(other.cursorHeight, cursorHeight) || other.cursorHeight == cursorHeight)&&(identical(other.cursorRadius, cursorRadius) || other.cursorRadius == cursorRadius)&&(identical(other.selectionWidthStyle, selectionWidthStyle) || other.selectionWidthStyle == selectionWidthStyle)&&(identical(other.selectionHeightStyle, selectionHeightStyle) || other.selectionHeightStyle == selectionHeightStyle)&&(identical(other.dragStartBehavior, dragStartBehavior) || other.dragStartBehavior == dragStartBehavior)&&(identical(other.enableInteractiveSelection, enableInteractiveSelection) || other.enableInteractiveSelection == enableInteractiveSelection)&&(identical(other.selectionControls, selectionControls) || other.selectionControls == selectionControls)&&(identical(other.scrollPhysics, scrollPhysics) || other.scrollPhysics == scrollPhysics)&&(identical(other.textWidthBasis, textWidthBasis) || other.textWidthBasis == textWidthBasis));
}


@override
int get hashCode => Object.hash(runtimeType,showCursor,cursorWidth,cursorHeight,cursorRadius,selectionWidthStyle,selectionHeightStyle,dragStartBehavior,enableInteractiveSelection,selectionControls,scrollPhysics,textWidthBasis);

@override
String toString() {
  return 'SelectableTextState(showCursor: $showCursor, cursorWidth: $cursorWidth, cursorHeight: $cursorHeight, cursorRadius: $cursorRadius, selectionWidthStyle: $selectionWidthStyle, selectionHeightStyle: $selectionHeightStyle, dragStartBehavior: $dragStartBehavior, enableInteractiveSelection: $enableInteractiveSelection, selectionControls: $selectionControls, scrollPhysics: $scrollPhysics, textWidthBasis: $textWidthBasis)';
}


}

/// @nodoc
abstract mixin class $SelectableTextStateCopyWith<$Res>  {
  factory $SelectableTextStateCopyWith(SelectableTextState value, $Res Function(SelectableTextState) _then) = _$SelectableTextStateCopyWithImpl;
@useResult
$Res call({
 bool showCursor, double cursorWidth, double? cursorHeight, Radius? cursorRadius, BoxWidthStyle selectionWidthStyle, BoxHeightStyle selectionHeightStyle, DragStartBehavior dragStartBehavior, bool enableInteractiveSelection, TextSelectionControls? selectionControls, ScrollPhysics? scrollPhysics, TextWidthBasis? textWidthBasis
});




}
/// @nodoc
class _$SelectableTextStateCopyWithImpl<$Res>
    implements $SelectableTextStateCopyWith<$Res> {
  _$SelectableTextStateCopyWithImpl(this._self, this._then);

  final SelectableTextState _self;
  final $Res Function(SelectableTextState) _then;

/// Create a copy of SelectableTextState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? showCursor = null,Object? cursorWidth = null,Object? cursorHeight = freezed,Object? cursorRadius = freezed,Object? selectionWidthStyle = null,Object? selectionHeightStyle = null,Object? dragStartBehavior = null,Object? enableInteractiveSelection = null,Object? selectionControls = freezed,Object? scrollPhysics = freezed,Object? textWidthBasis = freezed,}) {
  return _then(_self.copyWith(
showCursor: null == showCursor ? _self.showCursor : showCursor // ignore: cast_nullable_to_non_nullable
as bool,cursorWidth: null == cursorWidth ? _self.cursorWidth : cursorWidth // ignore: cast_nullable_to_non_nullable
as double,cursorHeight: freezed == cursorHeight ? _self.cursorHeight : cursorHeight // ignore: cast_nullable_to_non_nullable
as double?,cursorRadius: freezed == cursorRadius ? _self.cursorRadius : cursorRadius // ignore: cast_nullable_to_non_nullable
as Radius?,selectionWidthStyle: null == selectionWidthStyle ? _self.selectionWidthStyle : selectionWidthStyle // ignore: cast_nullable_to_non_nullable
as BoxWidthStyle,selectionHeightStyle: null == selectionHeightStyle ? _self.selectionHeightStyle : selectionHeightStyle // ignore: cast_nullable_to_non_nullable
as BoxHeightStyle,dragStartBehavior: null == dragStartBehavior ? _self.dragStartBehavior : dragStartBehavior // ignore: cast_nullable_to_non_nullable
as DragStartBehavior,enableInteractiveSelection: null == enableInteractiveSelection ? _self.enableInteractiveSelection : enableInteractiveSelection // ignore: cast_nullable_to_non_nullable
as bool,selectionControls: freezed == selectionControls ? _self.selectionControls : selectionControls // ignore: cast_nullable_to_non_nullable
as TextSelectionControls?,scrollPhysics: freezed == scrollPhysics ? _self.scrollPhysics : scrollPhysics // ignore: cast_nullable_to_non_nullable
as ScrollPhysics?,textWidthBasis: freezed == textWidthBasis ? _self.textWidthBasis : textWidthBasis // ignore: cast_nullable_to_non_nullable
as TextWidthBasis?,
  ));
}

}


/// @nodoc


class _SelectableTextState implements SelectableTextState {
  const _SelectableTextState({this.showCursor = false, this.cursorWidth = 2, this.cursorHeight, this.cursorRadius, this.selectionWidthStyle = BoxWidthStyle.tight, this.selectionHeightStyle = BoxHeightStyle.tight, this.dragStartBehavior = DragStartBehavior.start, this.enableInteractiveSelection = true, this.selectionControls, this.scrollPhysics, this.textWidthBasis});
  

@override@JsonKey() final  bool showCursor;
@override@JsonKey() final  double cursorWidth;
@override final  double? cursorHeight;
@override final  Radius? cursorRadius;
@override@JsonKey() final  BoxWidthStyle selectionWidthStyle;
@override@JsonKey() final  BoxHeightStyle selectionHeightStyle;
@override@JsonKey() final  DragStartBehavior dragStartBehavior;
@override@JsonKey() final  bool enableInteractiveSelection;
@override final  TextSelectionControls? selectionControls;
@override final  ScrollPhysics? scrollPhysics;
@override final  TextWidthBasis? textWidthBasis;

/// Create a copy of SelectableTextState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SelectableTextStateCopyWith<_SelectableTextState> get copyWith => __$SelectableTextStateCopyWithImpl<_SelectableTextState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SelectableTextState&&(identical(other.showCursor, showCursor) || other.showCursor == showCursor)&&(identical(other.cursorWidth, cursorWidth) || other.cursorWidth == cursorWidth)&&(identical(other.cursorHeight, cursorHeight) || other.cursorHeight == cursorHeight)&&(identical(other.cursorRadius, cursorRadius) || other.cursorRadius == cursorRadius)&&(identical(other.selectionWidthStyle, selectionWidthStyle) || other.selectionWidthStyle == selectionWidthStyle)&&(identical(other.selectionHeightStyle, selectionHeightStyle) || other.selectionHeightStyle == selectionHeightStyle)&&(identical(other.dragStartBehavior, dragStartBehavior) || other.dragStartBehavior == dragStartBehavior)&&(identical(other.enableInteractiveSelection, enableInteractiveSelection) || other.enableInteractiveSelection == enableInteractiveSelection)&&(identical(other.selectionControls, selectionControls) || other.selectionControls == selectionControls)&&(identical(other.scrollPhysics, scrollPhysics) || other.scrollPhysics == scrollPhysics)&&(identical(other.textWidthBasis, textWidthBasis) || other.textWidthBasis == textWidthBasis));
}


@override
int get hashCode => Object.hash(runtimeType,showCursor,cursorWidth,cursorHeight,cursorRadius,selectionWidthStyle,selectionHeightStyle,dragStartBehavior,enableInteractiveSelection,selectionControls,scrollPhysics,textWidthBasis);

@override
String toString() {
  return 'SelectableTextState(showCursor: $showCursor, cursorWidth: $cursorWidth, cursorHeight: $cursorHeight, cursorRadius: $cursorRadius, selectionWidthStyle: $selectionWidthStyle, selectionHeightStyle: $selectionHeightStyle, dragStartBehavior: $dragStartBehavior, enableInteractiveSelection: $enableInteractiveSelection, selectionControls: $selectionControls, scrollPhysics: $scrollPhysics, textWidthBasis: $textWidthBasis)';
}


}

/// @nodoc
abstract mixin class _$SelectableTextStateCopyWith<$Res> implements $SelectableTextStateCopyWith<$Res> {
  factory _$SelectableTextStateCopyWith(_SelectableTextState value, $Res Function(_SelectableTextState) _then) = __$SelectableTextStateCopyWithImpl;
@override @useResult
$Res call({
 bool showCursor, double cursorWidth, double? cursorHeight, Radius? cursorRadius, BoxWidthStyle selectionWidthStyle, BoxHeightStyle selectionHeightStyle, DragStartBehavior dragStartBehavior, bool enableInteractiveSelection, TextSelectionControls? selectionControls, ScrollPhysics? scrollPhysics, TextWidthBasis? textWidthBasis
});




}
/// @nodoc
class __$SelectableTextStateCopyWithImpl<$Res>
    implements _$SelectableTextStateCopyWith<$Res> {
  __$SelectableTextStateCopyWithImpl(this._self, this._then);

  final _SelectableTextState _self;
  final $Res Function(_SelectableTextState) _then;

/// Create a copy of SelectableTextState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? showCursor = null,Object? cursorWidth = null,Object? cursorHeight = freezed,Object? cursorRadius = freezed,Object? selectionWidthStyle = null,Object? selectionHeightStyle = null,Object? dragStartBehavior = null,Object? enableInteractiveSelection = null,Object? selectionControls = freezed,Object? scrollPhysics = freezed,Object? textWidthBasis = freezed,}) {
  return _then(_SelectableTextState(
showCursor: null == showCursor ? _self.showCursor : showCursor // ignore: cast_nullable_to_non_nullable
as bool,cursorWidth: null == cursorWidth ? _self.cursorWidth : cursorWidth // ignore: cast_nullable_to_non_nullable
as double,cursorHeight: freezed == cursorHeight ? _self.cursorHeight : cursorHeight // ignore: cast_nullable_to_non_nullable
as double?,cursorRadius: freezed == cursorRadius ? _self.cursorRadius : cursorRadius // ignore: cast_nullable_to_non_nullable
as Radius?,selectionWidthStyle: null == selectionWidthStyle ? _self.selectionWidthStyle : selectionWidthStyle // ignore: cast_nullable_to_non_nullable
as BoxWidthStyle,selectionHeightStyle: null == selectionHeightStyle ? _self.selectionHeightStyle : selectionHeightStyle // ignore: cast_nullable_to_non_nullable
as BoxHeightStyle,dragStartBehavior: null == dragStartBehavior ? _self.dragStartBehavior : dragStartBehavior // ignore: cast_nullable_to_non_nullable
as DragStartBehavior,enableInteractiveSelection: null == enableInteractiveSelection ? _self.enableInteractiveSelection : enableInteractiveSelection // ignore: cast_nullable_to_non_nullable
as bool,selectionControls: freezed == selectionControls ? _self.selectionControls : selectionControls // ignore: cast_nullable_to_non_nullable
as TextSelectionControls?,scrollPhysics: freezed == scrollPhysics ? _self.scrollPhysics : scrollPhysics // ignore: cast_nullable_to_non_nullable
as ScrollPhysics?,textWidthBasis: freezed == textWidthBasis ? _self.textWidthBasis : textWidthBasis // ignore: cast_nullable_to_non_nullable
as TextWidthBasis?,
  ));
}


}

// dart format on
