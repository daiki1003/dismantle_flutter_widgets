import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:dismantling/components.dart';
import 'package:dismantling/text_field/enums/text_input_type_ex.dart';
import 'package:dismantling/text_field/screens/text_field_view_model.dart';

class TextFieldScreen extends HookConsumerWidget {
  const TextFieldScreen({
    super.key,
  });

  static Route<void> route() {
    return MaterialPageRoute(
      builder: (_) => const TextFieldScreen(),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useTextEditingController(text: 'Lorem ipsum');
    final focusNode = useFocusNode();
    final state = ref.watch(textFieldViewModel);
    final notifier = ref.watch(textFieldViewModel.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('TextField')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            controller: controller,
            focusNode: focusNode,
            keyboardType: state.keyboardType,
            readOnly: state.readonly,
            showCursor: state.showCursor,
            obscureText: state.obscureText,
            autocorrect: state.autocorrect,
            enableSuggestions: state.enableSuggestions,
            expands: state.expands,
            enabled: state.enabled,
            enableInteractiveSelection: state.enableInteractiveSelection,
            enableIMEPersonalizedLearning: state.enableIMEPersonalizedLearning,
          ),
          const SizedBox(height: 32),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  SelectButton<TextInputType>(
                    label: 'keyboardType',
                    choices: TextInputType.values,
                    value: state.keyboardType,
                    valueTextBuilder: (inputType) => inputType.title,
                    onSelected: (value) async {
                      focusNode.unfocus();
                      notifier.keyboardTypeUpdated(value);
                      await Future<void>.delayed(
                        const Duration(milliseconds: 500),
                      );
                      focusNode.requestFocus();
                    },
                  ),
                  ToggleButton(
                    text: 'readonly',
                    value: state.readonly,
                    onToggled: (value) => notifier.readonlyToggled(),
                  ),
                  ToggleButton(
                    text: 'showCursor',
                    value: state.showCursor,
                    onToggled: (value) => notifier.showCursorToggled(),
                  ),
                  ToggleButton(
                    text: 'obscureText',
                    value: state.obscureText,
                    onToggled: (value) => notifier.obscureTextToggled(),
                  ),
                  ToggleButton(
                    text: 'autocorrect',
                    value: state.autocorrect,
                    onToggled: (value) => notifier.autocorrectToggled(),
                  ),
                  ToggleButton(
                    text: 'enableSuggestions',
                    value: state.enableSuggestions,
                    onToggled: (value) => notifier.enableSuggestionsToggled(),
                  ),
                  ToggleButton(
                    text: 'expands',
                    value: state.expands,
                    onToggled: (value) => notifier.expandsToggled(),
                  ),
                  ToggleButton(
                    text: 'enabled',
                    value: state.enabled,
                    onToggled: (value) => notifier.enabledToggled(),
                  ),
                  ToggleButton(
                    text: 'enableInteractiveSelection',
                    value: state.enableInteractiveSelection,
                    onToggled: (value) =>
                        notifier.enableInteractiveSelectionToggled(),
                  ),
                  ToggleButton(
                    text: 'enableIMEPersonalizedLearning',
                    value: state.enableIMEPersonalizedLearning,
                    onToggled: (value) =>
                        notifier.enableIMEPersonalizedLearningToggled(),
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
