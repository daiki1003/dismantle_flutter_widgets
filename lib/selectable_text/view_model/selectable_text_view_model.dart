import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:dismantling/selectable_text/components/selectable_text_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'selectable_text_view_model.g.dart';

@riverpod
class SelectableTextViewModel extends _$SelectableTextViewModel {
  @override
  SelectableTextState build() {
    return SelectableTextState.empty();
  }

  void showCursorToggled() {
    state = state.copyWith(showCursor: !state.showCursor);
  }

  void cursorWidthUpdated(double width) {
    state = state.copyWith(cursorWidth: width);
  }

  void cursorHeightUpdated(double height) {
    state = state.copyWith(cursorHeight: height);
  }

  void cursorRadiusUpdated(Radius radius) {
    state = state.copyWith(cursorRadius: radius);
  }

  void selectionWidthStyleUpdated(BoxWidthStyle selectionWidthStyle) {
    state = state.copyWith(selectionWidthStyle: selectionWidthStyle);
  }

  void selectionHeightStyleUpdated(BoxHeightStyle selectionHeightStyle) {
    state = state.copyWith(selectionHeightStyle: selectionHeightStyle);
  }

  void dragStartBehaviorUpdated(DragStartBehavior dragStartBehavior) {
    state = state.copyWith(dragStartBehavior: dragStartBehavior);
  }

  void enableInteractiveSelectionToggled() {
    state = state.copyWith(
      enableInteractiveSelection: !state.enableInteractiveSelection,
    );
  }

  void selectionControlsUpdated(TextSelectionControls? selectionControls) {
    state = state.copyWith(
      selectionControls: selectionControls,
    );
  }

  void scrollPhysicsUpdated(ScrollPhysics? scrollPhysics) {
    state = state.copyWith(
      scrollPhysics: scrollPhysics,
    );
  }

  void textWidthBasisUpdated(TextWidthBasis? textWidthBasis) {
    state = state.copyWith(
      textWidthBasis: textWidthBasis,
    );
  }
}
