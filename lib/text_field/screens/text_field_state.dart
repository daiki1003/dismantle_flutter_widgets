import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_field_state.freezed.dart';

@freezed
class TextFieldState with _$TextFieldState {
  const factory TextFieldState({
    @Default(false) bool readonly,
    @Default(true) bool showCursor,
    @Default(false) bool obscureText,
    @Default(true) bool autocorrect,
    @Default(true) bool enableSuggestions,
    @Default(false) bool expands,
    @Default(true) bool enabled,
  }) = _TextFieldState;

  factory TextFieldState.empty() {
    return const TextFieldState();
  }
}
