import 'package:flutter/material.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_field_decoration_state.freezed.dart';

@freezed
class TextFieldDecorationState with _$TextFieldDecorationState {
  const factory TextFieldDecorationState({
    @Default(false) bool showsIcon,
    Color? iconColor,
    @Default(false) bool showsLabel,
    @Default(false) bool showsLabelText,
    @Default(false) bool appliesLabelStyle,
    @Default(false) bool appliesFloatingLabelStyle,
    @Default(0) int helperTextLines,
    @Default(false) bool appliesHelperStyle,
    int? helperMaxLines,
  }) = _TextFieldDecorationState;

  factory TextFieldDecorationState.empty() {
    return const TextFieldDecorationState();
  }
}

extension TextFieldDecorationStateEx on TextFieldDecorationState {
  TextFieldDecorationState showsIconToggled() {
    return copyWith(showsIcon: !showsIcon);
  }

  TextFieldDecorationState iconColorUpdated(Color? iconColor) {
    return copyWith(iconColor: iconColor);
  }

  TextFieldDecorationState showsLabelToggled() {
    return copyWith(showsLabel: !showsLabel);
  }

  TextFieldDecorationState showsLabelTextToggled() {
    return copyWith(showsLabelText: !showsLabelText);
  }

  TextFieldDecorationState appliesLabelStyleToggled() {
    return copyWith(appliesLabelStyle: !appliesLabelStyle);
  }

  TextFieldDecorationState appliesFloatingLabelStyleToggled() {
    return copyWith(appliesFloatingLabelStyle: !appliesFloatingLabelStyle);
  }

  TextFieldDecorationState helperTextLinesUpdated(int helperTextLines) {
    return copyWith(helperTextLines: helperTextLines);
  }

  TextFieldDecorationState appliesHelperStyleToggled() {
    return copyWith(appliesHelperStyle: !appliesHelperStyle);
  }

  TextFieldDecorationState helperMaxLinesUpdated(int? helperMaxLines) {
    return copyWith(helperMaxLines: helperMaxLines);
  }
}
