import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:dismantling/text_field/screens/text_field_state.dart';

final textFieldViewModel =
    StateNotifierProvider.autoDispose<_TextFieldViewModel, TextFieldState>(
  (ref) => _TextFieldViewModel(),
);

class _TextFieldViewModel extends StateNotifier<TextFieldState> {
  _TextFieldViewModel() : super(TextFieldState.empty());

  void readonlyToggled() {
    state = state.copyWith(readonly: !state.readonly);
  }

  void showCursorToggled() {
    state = state.copyWith(showCursor: !state.showCursor);
  }
}
