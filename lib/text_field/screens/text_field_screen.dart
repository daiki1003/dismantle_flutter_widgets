import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:dismantling/components/callbacks.dart';
import 'package:dismantling/text_field/screens/text_field_view_model.dart';

class TextFieldScreen extends HookConsumerWidget {
  const TextFieldScreen({
    Key? key,
  }) : super(key: key);

  static Route<void> route() {
    return MaterialPageRoute(
      builder: (_) => const TextFieldScreen(),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useTextEditingController(text: 'Lorem ipsum');
    final state = ref.watch(textFieldViewModel);
    final notifier = ref.watch(textFieldViewModel.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('TextField')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            controller: controller,
            readOnly: state.readonly,
            showCursor: state.showCursor,
            obscureText: state.obscureText,
            autocorrect: state.autocorrect,
            enableSuggestions: state.enableSuggestions,
          ),
          const SizedBox(height: 32),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  _ToggleButton(
                    text: 'readonly',
                    value: state.readonly,
                    onToggled: (value) => notifier.readonlyToggled(),
                  ),
                  _ToggleButton(
                    text: 'showCursor',
                    value: state.showCursor,
                    onToggled: (value) => notifier.showCursorToggled(),
                  ),
                  _ToggleButton(
                    text: 'obscureText',
                    value: state.obscureText,
                    onToggled: (value) => notifier.obscureTextToggled(),
                  ),
                  _ToggleButton(
                    text: 'autocorrect',
                    value: state.autocorrect,
                    onToggled: (value) => notifier.autocorrectToggled(),
                  ),
                  _ToggleButton(
                    text: 'enableSuggestions',
                    value: state.enableSuggestions,
                    onToggled: (value) => notifier.enableSuggestionsToggled(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ToggleButton extends StatelessWidget {
  const _ToggleButton({
    required this.text,
    required this.value,
    Key? key,
    required this.onToggled,
  }) : super(key: key);

  final String text;
  final bool value;
  final ValueCallback<bool> onToggled;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
      child: Text(
        '$text: $value',
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      onPressed: () => onToggled(!value),
    );
  }
}
