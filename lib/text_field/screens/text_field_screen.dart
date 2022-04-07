import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:dismantling/components/callbacks.dart';
import 'package:dismantling/text_field/enums/text_input_type_ex.dart';
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
                  _SelectButton<TextInputType>(
                    text: 'keyboardType',
                    choices: TextInputType.values,
                    value: state.keyboardType,
                    textBuilder: (inputType) => inputType.title,
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
                  _SelectButton<TextInputAction>(
                    text: 'textInputAction',
                    choices: TextInputAction.values,
                    value: state.textInputAction,
                    textBuilder: (action) => action.name,
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
                  _SelectButton<TextCapitalization>(
                    text: 'textCapitalization',
                    choices: TextCapitalization.values,
                    value: state.textCapitalization,
                    textBuilder: (value) => value.name,
                    onSelected: (value) async {
                      focusNode.unfocus();
                      notifier.textCapitalizationUpdated(value);
                      await Future<void>.delayed(
                        const Duration(milliseconds: 500),
                      );
                      focusNode.requestFocus();
                    },
                  ),
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
                  _ToggleButton(
                    text: 'expands',
                    value: state.expands,
                    onToggled: (value) => notifier.expandsToggled(),
                  ),
                  _ToggleButton(
                    text: 'enabled',
                    value: state.enabled,
                    onToggled: (value) => notifier.enabledToggled(),
                  ),
                  _ToggleButton(
                    text: 'enableInteractiveSelection',
                    value: state.enableInteractiveSelection,
                    onToggled: (value) =>
                        notifier.enableInteractiveSelectionToggled(),
                  ),
                  _ToggleButton(
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

class _SelectButton<T> extends StatelessWidget {
  const _SelectButton({
    Key? key,
    required this.text,
    required this.choices,
    required this.value,
    required this.textBuilder,
    required this.onSelected,
  }) : super(key: key);

  final String text;
  final List<T> choices;
  final T? value;
  final String Function(T) textBuilder;
  final ValueCallback<T> onSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 4,
          runSpacing: 4,
          children: [
            for (final choice in choices)
              InkWell(
                onTap: () => onSelected(choice),
                child: Chip(
                  backgroundColor: value == choice
                      ? Theme.of(context).primaryColorLight
                      : null,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  labelPadding: const EdgeInsets.symmetric(horizontal: 8),
                  label: Text(textBuilder(choice)),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
