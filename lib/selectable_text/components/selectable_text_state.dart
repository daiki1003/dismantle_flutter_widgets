import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'selectable_text_state.freezed.dart';

@freezed
class SelectableTextState with _$SelectableTextState {
  const factory SelectableTextState({
    @Default(false) bool showCursor,
    @Default(2) double cursorWidth,
    double? cursorHeight,
    Radius? cursorRadius,
    @Default(BoxWidthStyle.tight) BoxWidthStyle selectionWidthStyle,
    @Default(BoxHeightStyle.tight) BoxHeightStyle selectionHeightStyle,
  }) = _SelectableTextState;

  factory SelectableTextState.empty() {
    return const SelectableTextState();
  }
}
