import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_field_decoration_state.freezed.dart';

@freezed
class TextFieldDecorationState with _$TextFieldDecorationState {
  const factory TextFieldDecorationState({
    @Default(false) bool showsIcon,
  }) = _TextFieldDecorationState;

  factory TextFieldDecorationState.empty() {
    return const TextFieldDecorationState();
  }
}

extension TextFieldDecorationStateEx on TextFieldDecorationState {
  TextFieldDecorationState showsIconToggled() {
    return copyWith(showsIcon: !showsIcon);
  }
}
