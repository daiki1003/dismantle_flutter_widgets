import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:dismantling/components.dart';
import 'package:dismantling/text_field/enums/text_input_type_ex.dart';
import 'package:dismantling/text_field/enums/text_align_vertical_ex.dart';
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
            textInputAction: state.textInputAction,
            textCapitalization: state.textCapitalization,
            textAlign: state.textAlign,
            textAlignVertical: state.textAlignVertical,
            textDirection: state.textDirection,
            smartDashesType: state.smartDashesType,
            smartQuotesType: state.smartQuotesType,
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
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  const SizedBox(height: 12),
                  SelectButton<TextInputAction>(
                    label: 'textInputAction',
                    choices: TextInputAction.values,
                    value: state.textInputAction,
                    valueTextBuilder: (action) => action.name,
                    onSelected: (value) async {
                      focusNode.unfocus();
                      notifier.textInputActionUpdated(value);
                      await Future<void>.delayed(
                        const Duration(milliseconds: 500),
                      );
                      focusNode.requestFocus();
                    },
                  ),
                  const SizedBox(height: 12),
                  SelectButton<TextCapitalization>(
                    label: 'textCapitalization',
                    choices: TextCapitalization.values,
                    value: state.textCapitalization,
                    valueTextBuilder: (value) => value.name,
                    onSelected: (value) async {
                      focusNode.unfocus();
                      notifier.textCapitalizationUpdated(value);
                      await Future<void>.delayed(
                        const Duration(milliseconds: 500),
                      );
                      focusNode.requestFocus();
                    },
                  ),
                  const SizedBox(height: 12),
                  SelectButton<TextAlign>(
                    label: 'textAlign',
                    choices: TextAlign.values,
                    value: state.textAlign,
                    valueTextBuilder: (value) => value.name,
                    onSelected: notifier.textAlignUpdated,
                  ),
                  const SizedBox(height: 12),
                  SelectButton<TextAlignVertical>(
                    label: 'textAlignVertical',
                    choices: const [
                      TextAlignVertical.top,
                      TextAlignVertical.center,
                      TextAlignVertical.bottom,
                    ],
                    value: state.textAlignVertical,
                    valueTextBuilder: (value) => value.name,
                    onSelected: notifier.textAlignVerticalUpdated,
                  ),
                  const SizedBox(height: 12),
                  SelectButton<TextDirection>(
                    label: 'textDirection',
                    choices: TextDirection.values,
                    value: state.textDirection,
                    valueTextBuilder: (value) => value.name,
                    onSelected: notifier.textDirectionUpdated,
                  ),
                  const SizedBox(height: 12),
                  SelectButton<SmartDashesType>(
                    label: 'smartDashesType',
                    choices: SmartDashesType.values,
                    value: state.smartDashesType,
                    valueTextBuilder: (value) => value.name,
                    onSelected: (value) async {
                      focusNode.unfocus();
                      notifier.smartDashesTypeUpdated(value);
                      await Future<void>.delayed(
                        const Duration(milliseconds: 500),
                      );
                      focusNode.requestFocus();
                    },
                  ),
                  const SizedBox(height: 12),
                  SelectButton<SmartQuotesType>(
                    label: 'smartQuotesType',
                    choices: SmartQuotesType.values,
                    value: state.smartQuotesType,
                    valueTextBuilder: (value) => value.name,
                    onSelected: (value) async {
                      focusNode.unfocus();
                      notifier.smartQuotesTypeUpdated(value);
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
