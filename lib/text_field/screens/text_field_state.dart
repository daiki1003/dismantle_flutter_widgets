import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_field_state.freezed.dart';

@freezed
class TextFieldState with _$TextFieldState {
  const factory TextFieldState({
    TextInputType? keyboardType,
    TextInputAction? textInputAction,
    @Default(TextCapitalization.none) TextCapitalization textCapitalization,
    @Default(TextAlign.start) TextAlign textAlign,
    TextAlignVertical? textAlignVertical,
    TextDirection? textDirection,
    SmartDashesType? smartDashesType,
    SmartQuotesType? smartQuotesType,
    MaxLengthEnforcement? maxLengthEnforcement,
    @Default(false) bool readonly,
    @Default(true) bool showCursor,
    @Default(false) bool obscureText,
    @Default(true) bool autocorrect,
    @Default(true) bool enableSuggestions,
    @Default(false) bool expands,
    @Default(true) bool enabled,
    @Default(true) bool enableInteractiveSelection,
    @Default(true) bool enableIMEPersonalizedLearning,
  }) = _TextFieldState;

  factory TextFieldState.empty() {
    return const TextFieldState();
  }
}
