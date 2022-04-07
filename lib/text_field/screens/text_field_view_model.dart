import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:dismantling/text_field/screens/text_field_state.dart';

final textFieldViewModel =
    StateNotifierProvider.autoDispose<_TextFieldViewModel, TextFieldState>(
  (ref) => _TextFieldViewModel(),
);

class _TextFieldViewModel extends StateNotifier<TextFieldState> {
  _TextFieldViewModel() : super(TextFieldState.empty());

  void keyboardTypeUpdated(TextInputType type) {
    state = state.copyWith(keyboardType: type);
  }

  void textInputActionUpdated(TextInputAction action) {
    state = state.copyWith(textInputAction: action);
  }

  void textCapitalizationUpdated(TextCapitalization capitalization) {
    state = state.copyWith(textCapitalization: capitalization);
  }

  void textAlignUpdated(TextAlign align) {
    state = state.copyWith(textAlign: align);
  }

  void textAlignVerticalUpdated(TextAlignVertical alignVertical) {
    state = state.copyWith(textAlignVertical: alignVertical);
  }

  void textDirectionUpdated(TextDirection direction) {
    state = state.copyWith(textDirection: direction);
  }

  void smartDashesTypeUpdated(SmartDashesType smartDashesType) {
    state = state.copyWith(smartDashesType: smartDashesType);
  }

  void smartQuotesTypeUpdated(SmartQuotesType smartQuotesType) {
    state = state.copyWith(smartQuotesType: smartQuotesType);
  }

  void readonlyToggled() {
    state = state.copyWith(readonly: !state.readonly);
  }

  void showCursorToggled() {
    state = state.copyWith(showCursor: !state.showCursor);
  }

  void obscureTextToggled() {
    state = state.copyWith(obscureText: !state.obscureText);
  }

  void autocorrectToggled() {
    state = state.copyWith(autocorrect: !state.autocorrect);
  }

  void enableSuggestionsToggled() {
    state = state.copyWith(enableSuggestions: !state.enableSuggestions);
  }

  void expandsToggled() {
    state = state.copyWith(expands: !state.expands);
  }

  void enabledToggled() {
    state = state.copyWith(enabled: !state.enabled);
  }

  void enableInteractiveSelectionToggled() {
    state = state.copyWith(
      enableInteractiveSelection: !state.enableInteractiveSelection,
    );
  }

  void enableIMEPersonalizedLearningToggled() {
    state = state.copyWith(
      enableIMEPersonalizedLearning: !state.enableIMEPersonalizedLearning,
    );
  }
}
