import 'package:flutter/material.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_field_decoration_state.freezed.dart';

@freezed
abstract class TextFieldDecorationState with _$TextFieldDecorationState {
  factory TextFieldDecorationState({
    @Default(false) bool showsIcon,
    Color? iconColor,
    @Default(false) bool showsLabel,
    @Default(false) bool showsLabelText,
    @Default(false) bool appliesLabelStyle,
    @Default(false) bool appliesFloatingLabelStyle,
    @Default(0) int helperTextLines,
    @Default(false) bool appliesHelperStyle,
    int? helperMaxLines,
    @Default(0) int hintTextLines,
    @Default(false) bool appliesHintStyle,
    TextDirection? hintTextDirection,
    int? hintMaxLines,
    @Default(false) bool showsError,
    @Default(0) int errorTextLines,
    @Default(false) bool appliesErrorStyle,
    int? errorMaxLines,
    FloatingLabelBehavior? floatingLabelBehavior,
    FloatingLabelAlignment? floatingLabelAlignment,
    @Default(false) bool isCollapsed,
    @Default(false) bool isDense,
    @Default(0) double contentPadding,
    @Default(false) bool showsPrefixIcon,
    @Default(0) double prefixIconConstraints,
    @Default(false) bool showsPrefix,
    @Default(0) int prefixTextLines,
    @Default(false) bool appliesPrefixStyle,
    Color? prefixIconColor,
    @Default(false) bool showsSuffixIcon,
    @Default(0) double suffixIconConstraints,
    @Default(false) bool showsSuffix,
    @Default(0) int suffixTextLines,
    @Default(false) bool appliesSuffixStyle,
    Color? suffixIconColor,
    @Default(false) bool showsCounter,
    @Default(false) bool showsCounterText,
    @Default(false) bool appliesCounterStyle,
    @Default(false) bool filled,
    Color? fillColor,
    Color? focusColor,
    Color? hoverColor,
  }) = _TextFieldDecorationState;

  TextFieldDecorationState._();

  factory TextFieldDecorationState.empty() {
    return TextFieldDecorationState();
  }

  @override
  late final bool hasPrefixText = 0 < prefixTextLines;

  @override
  late final bool hasSuffixText = 0 < suffixTextLines;
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

  TextFieldDecorationState hintTextLinesUpdated(int hintTextLines) {
    return copyWith(hintTextLines: hintTextLines);
  }

  TextFieldDecorationState appliesHintStyleToggled() {
    return copyWith(appliesHintStyle: !appliesHintStyle);
  }

  TextFieldDecorationState hintTextDirectionUpdated(
    TextDirection? hintTextDirection,
  ) {
    return copyWith(hintTextDirection: hintTextDirection);
  }

  TextFieldDecorationState hintMaxLinesUpdated(int? hintMaxLines) {
    return copyWith(hintMaxLines: hintMaxLines);
  }

  TextFieldDecorationState showsErrorToggled() {
    return copyWith(showsError: !showsError);
  }

  TextFieldDecorationState errorTextLinesUpdated(int errorTextLines) {
    return copyWith(errorTextLines: errorTextLines);
  }

  TextFieldDecorationState appliesErrorStyleToggled() {
    return copyWith(appliesErrorStyle: !appliesErrorStyle);
  }

  TextFieldDecorationState errorMaxLinesUpdated(int? errorMaxLines) {
    return copyWith(errorMaxLines: errorMaxLines);
  }

  TextFieldDecorationState floatingLabelBehaviorUpdated(
    FloatingLabelBehavior? floatingLabelBehavior,
  ) {
    return copyWith(floatingLabelBehavior: floatingLabelBehavior);
  }

  TextFieldDecorationState floatingLabelAlignmentUpdated(
    FloatingLabelAlignment? floatingLabelAlignment,
  ) {
    return copyWith(floatingLabelAlignment: floatingLabelAlignment);
  }

  TextFieldDecorationState isCollapsedToggled() {
    return copyWith(isCollapsed: !isCollapsed);
  }

  TextFieldDecorationState isDenseToggled() {
    return copyWith(isDense: !isDense);
  }

  TextFieldDecorationState contentPaddingUpdated(double contentPadding) {
    return copyWith(contentPadding: contentPadding);
  }

  TextFieldDecorationState showsPrefixIconToggled() {
    return copyWith(showsPrefixIcon: !showsPrefixIcon);
  }

  TextFieldDecorationState prefixIconConstraintsUpdated(
    double prefixIconConstraints,
  ) {
    return copyWith(prefixIconConstraints: prefixIconConstraints);
  }

  TextFieldDecorationState showsPrefixToggled() {
    return copyWith(showsPrefix: !showsPrefix);
  }

  TextFieldDecorationState prefixTextLinesUpdated(int prefixTextLines) {
    return copyWith(prefixTextLines: prefixTextLines);
  }

  TextFieldDecorationState appliesPrefixStyleToggled() {
    return copyWith(appliesPrefixStyle: !appliesPrefixStyle);
  }

  TextFieldDecorationState prefixIconColorUpdated(Color? prefixIconColor) {
    return copyWith(prefixIconColor: prefixIconColor);
  }

  TextFieldDecorationState showsSuffixIconToggled() {
    return copyWith(showsSuffixIcon: !showsSuffixIcon);
  }

  TextFieldDecorationState suffixIconConstraintsUpdated(
    double suffixIconConstraints,
  ) {
    return copyWith(suffixIconConstraints: suffixIconConstraints);
  }

  TextFieldDecorationState showsSuffixToggled() {
    return copyWith(showsSuffix: !showsSuffix);
  }

  TextFieldDecorationState suffixTextLinesUpdated(int suffixTextLines) {
    return copyWith(suffixTextLines: suffixTextLines);
  }

  TextFieldDecorationState appliesSuffixStyleToggled() {
    return copyWith(appliesSuffixStyle: !appliesSuffixStyle);
  }

  TextFieldDecorationState suffixIconColorUpdated(Color? suffixIconColor) {
    return copyWith(suffixIconColor: suffixIconColor);
  }

  TextFieldDecorationState showsCounterToggled() {
    return copyWith(showsCounter: !showsCounter);
  }

  TextFieldDecorationState showsCounterTextToggled() {
    return copyWith(showsCounterText: !showsCounterText);
  }

  TextFieldDecorationState appliesCounterStyleToggled() {
    return copyWith(appliesCounterStyle: !appliesCounterStyle);
  }

  TextFieldDecorationState filledToggled() {
    return copyWith(filled: !filled);
  }

  TextFieldDecorationState fillColorUpdated(Color? fillColor) {
    return copyWith(fillColor: fillColor);
  }

  TextFieldDecorationState focusColorUpdated(Color? focusColor) {
    return copyWith(focusColor: focusColor);
  }

  TextFieldDecorationState hoverColorUpdated(Color? hoverColor) {
    return copyWith(hoverColor: hoverColor);
  }
}
