import 'package:flutter/material.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:dismantling/text_field_decoration/components/text_field_decoration_state.dart';

part 'text_field_decoration_view_model.g.dart';

@riverpod
class TextFieldDecorationViewModel extends _$TextFieldDecorationViewModel {
  @override
  TextFieldDecorationState build() {
    return TextFieldDecorationState.empty();
  }

  void toggleShowsIcon() {
    state = state.showsIconToggled();
  }

  void iconColorUpdated(Color? iconColor) {
    state = state.iconColorUpdated(iconColor);
  }

  void toggleShowsLabel() {
    state = state.showsLabelToggled();
  }

  void toggleShowsLabelText() {
    state = state.showsLabelTextToggled();
  }

  void toggleAppliesLabelStyle() {
    state = state.appliesLabelStyleToggled();
  }
}
