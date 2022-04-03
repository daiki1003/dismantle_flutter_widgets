import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_field_state.freezed.dart';

@freezed
class TextFieldState with _$TextFieldState {
  const factory TextFieldState({
    @Default(false) bool readonly,
    @Default(true) bool showCursor,
    @Default(false) bool obscureText,
  }) = _TextFieldState;

  factory TextFieldState.empty() {
    return const TextFieldState();
  }
}
