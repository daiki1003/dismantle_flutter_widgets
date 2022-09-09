import 'package:freezed_annotation/freezed_annotation.dart';

part 'selectable_text_state.freezed.dart';

@freezed
class SelectableTextState with _$SelectableTextState {
  const factory SelectableTextState({
    @Default(false) bool showCursor,
    @Default(2) double cursorWidth,
  }) = _SelectableTextState;

  factory SelectableTextState.empty() {
    return const SelectableTextState();
  }
}
