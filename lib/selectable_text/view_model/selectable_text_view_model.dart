import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:dismantling/selectable_text/components/selectable_text_state.dart';

final selectableTextViewModel = StateNotifierProvider.autoDispose<
    _SelectableTextViewModel, SelectableTextState>(
  (ref) => _SelectableTextViewModel(),
);

class _SelectableTextViewModel extends StateNotifier<SelectableTextState> {
  _SelectableTextViewModel() : super(SelectableTextState.empty());

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
}
