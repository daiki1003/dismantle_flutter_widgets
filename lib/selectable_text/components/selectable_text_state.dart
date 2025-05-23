import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'selectable_text_state.freezed.dart';

@freezed
abstract class SelectableTextState with _$SelectableTextState {
  const factory SelectableTextState({
    @Default(false) bool showCursor,
    @Default(2) double cursorWidth,
    double? cursorHeight,
    Radius? cursorRadius,
    @Default(BoxWidthStyle.tight) BoxWidthStyle selectionWidthStyle,
    @Default(BoxHeightStyle.tight) BoxHeightStyle selectionHeightStyle,
    @Default(DragStartBehavior.start) DragStartBehavior dragStartBehavior,
    @Default(true) bool enableInteractiveSelection,
    TextSelectionControls? selectionControls,
    ScrollPhysics? scrollPhysics,
    TextWidthBasis? textWidthBasis,
  }) = _SelectableTextState;

  factory SelectableTextState.empty() {
    return const SelectableTextState();
  }
}
