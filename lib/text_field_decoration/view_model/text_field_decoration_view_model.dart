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

  void toggleAppliesFloatingLabelStyle() {
    state = state.appliesFloatingLabelStyleToggled();
  }

  void helperTextLinesUpdated(int helperTextLines) {
    state = state.helperTextLinesUpdated(helperTextLines);
  }

  void toggleAppliesHelperStyle() {
    state = state.appliesHelperStyleToggled();
  }

  void helperMaxLinesUpdated(int? helperMaxLines) {
    state = state.helperMaxLinesUpdated(helperMaxLines);
  }

  void hintTextLinesUpdated(int hintTextLines) {
    state = state.hintTextLinesUpdated(hintTextLines);
  }

  void toggleAppliesHintStyle() {
    state = state.appliesHintStyleToggled();
  }

  void hintTextDirectionUpdated(TextDirection? hintTextDirection) {
    state = state.hintTextDirectionUpdated(hintTextDirection);
  }

  void hintMaxLinesUpdated(int? hintMaxLines) {
    state = state.hintMaxLinesUpdated(hintMaxLines);
  }

  void toggleShowsError() {
    state = state.showsErrorToggled();
  }

  void errorTextLinesUpdated(int errorTextLines) {
    state = state.errorTextLinesUpdated(errorTextLines);
  }

  void toggleAppliesErrorStyle() {
    state = state.appliesErrorStyleToggled();
  }

  void errorMaxLinesUpdated(int? errorMaxLines) {
    state = state.errorMaxLinesUpdated(errorMaxLines);
  }

  void floatingLabelBehaviorUpdated(
    FloatingLabelBehavior? floatingLabelBehavior,
  ) {
    state = state.floatingLabelBehaviorUpdated(floatingLabelBehavior);
  }

  void floatingLabelAlignmentUpdated(
    FloatingLabelAlignment? floatingLabelAlignment,
  ) {
    state = state.floatingLabelAlignmentUpdated(floatingLabelAlignment);
  }
}
