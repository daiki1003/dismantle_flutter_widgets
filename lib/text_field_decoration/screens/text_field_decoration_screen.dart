import 'package:dismantling/components/select_menu.dart';
import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intersperse/intersperse.dart';

import 'package:dismantling/components/toggle_menu.dart';
import 'package:dismantling/components/slider_menu.dart';
import 'package:dismantling/text_field_decoration/view_model/text_field_decoration_view_model.dart';

class TextFieldDecorationScreen extends HookConsumerWidget {
  const TextFieldDecorationScreen({
    super.key,
  });

  static Route<void> route() {
    return MaterialPageRoute(
      builder: (_) => const TextFieldDecorationScreen(),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(textFieldDecorationViewModelProvider);
    final viewModel = ref.watch(textFieldDecorationViewModelProvider.notifier);

    const style = TextStyle(
      color: Colors.red,
      fontWeight: FontWeight.bold,
    );

    return Scaffold(
      appBar: AppBar(title: const Text('TextField.decoration')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  icon: state.showsIcon ? const Icon(Icons.visibility) : null,
                  iconColor: state.iconColor,
                  label: state.showsLabel ? const Text('label') : null,
                  labelText: state.showsLabelText ? 'labelText' : null,
                  labelStyle: state.appliesLabelStyle ? style : null,
                  floatingLabelStyle:
                      state.appliesFloatingLabelStyle ? style : null,
                  helperText: state.helperTextLines == 0
                      ? null
                      : List.generate(
                          state.helperTextLines,
                          (_) => 'helperText',
                        ).join('\n'),
                  helperStyle: state.appliesHelperStyle ? style : null,
                  helperMaxLines: state.helperMaxLines,
                  hintText: state.hintTextLines == 0
                      ? null
                      : List.generate(
                          state.hintTextLines,
                          (_) => 'hintText',
                        ).join('\n'),
                  hintStyle: state.appliesHintStyle ? style : null,
                  hintTextDirection: state.hintTextDirection,
                  hintMaxLines: state.hintMaxLines,
                  error: state.showsError ? const Icon(Icons.error) : null,
                  errorText: state.errorTextLines == 0
                      ? null
                      : List.generate(
                          state.errorTextLines,
                          (_) => 'errorText',
                        ).join('\n'),
                  errorStyle: state.appliesErrorStyle ? style : null,
                ),
              ),
              const SizedBox(height: 32),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      ToggleMenu(
                        text: 'icon',
                        value: state.showsIcon,
                        onToggled: (_) {
                          viewModel.toggleShowsIcon();
                        },
                      ),
                      SelectMenu<Color?>(
                        label: 'iconColor',
                        choices: const [Colors.green, Colors.red, null],
                        value: state.iconColor,
                        valueTextBuilder: (color) =>
                            color?.toString() ?? 'null',
                        onSelected: viewModel.iconColorUpdated,
                      ),
                      ToggleMenu(
                        text: 'label',
                        value: state.showsLabel,
                        onToggled: state.showsLabelText
                            ? null
                            : (_) {
                                viewModel.toggleShowsLabel();
                              },
                      ),
                      ToggleMenu(
                        text: 'labelText',
                        value: state.showsLabelText,
                        onToggled: state.showsLabel
                            ? null
                            : (_) {
                                viewModel.toggleShowsLabelText();
                              },
                      ),
                      ToggleMenu(
                        text: 'labelStyle',
                        value: state.appliesLabelStyle,
                        onToggled: (_) {
                          viewModel.toggleAppliesLabelStyle();
                        },
                      ),
                      ToggleMenu(
                        text: 'floatingLabelStyle',
                        value: state.appliesFloatingLabelStyle,
                        onToggled: (_) {
                          viewModel.toggleAppliesFloatingLabelStyle();
                        },
                      ),
                      SliderMenu(
                        label: 'helperTextLines',
                        value: state.helperTextLines.toDouble(),
                        min: 0,
                        max: 5,
                        divisions: 5,
                        onChanged: (v) => viewModel.helperTextLinesUpdated(
                          v.toInt(),
                        ),
                      ),
                      SliderMenu(
                        label: 'helperMaxLines',
                        value: (state.helperMaxLines ?? 1).toDouble(),
                        min: 1,
                        max: 5,
                        divisions: 4,
                        onChanged: (v) => viewModel.helperMaxLinesUpdated(
                          v.toInt(),
                        ),
                      ),
                      ToggleMenu(
                        text: 'helperStyle',
                        value: state.appliesHelperStyle,
                        onToggled: (_) {
                          viewModel.toggleAppliesHelperStyle();
                        },
                      ),
                      SliderMenu(
                        label: 'hintText',
                        value: state.hintTextLines.toDouble(),
                        min: 0,
                        max: 5,
                        divisions: 5,
                        onChanged: (v) => viewModel.hintTextLinesUpdated(
                          v.toInt(),
                        ),
                      ),
                      ToggleMenu(
                        text: 'hintStyle',
                        value: state.appliesHintStyle,
                        onToggled: (_) {
                          viewModel.toggleAppliesHintStyle();
                        },
                      ),
                      SelectMenu<TextDirection?>(
                        label: 'hintTextDirection',
                        choices: const [
                          null,
                          ...TextDirection.values,
                        ],
                        value: state.hintTextDirection,
                        valueTextBuilder: (d) => d?.toString() ?? 'null',
                        onSelected: viewModel.hintTextDirectionUpdated,
                      ),
                      SliderMenu(
                        label: 'hintMaxLines',
                        value: (state.hintMaxLines ?? 1).toDouble(),
                        min: 1,
                        max: 5,
                        divisions: 4,
                        onChanged: (v) => viewModel.hintMaxLinesUpdated(
                          v.toInt(),
                        ),
                      ),
                      ToggleMenu(
                        text: 'error',
                        value: state.showsError,
                        onToggled: (_) {
                          viewModel.toggleShowsError();
                        },
                      ),
                      SliderMenu(
                        label: 'error',
                        value: state.errorTextLines.toDouble(),
                        min: 0,
                        max: 5,
                        divisions: 5,
                        onChanged: (v) => viewModel.errorTextLinesUpdated(
                          v.toInt(),
                        ),
                      ),
                      ToggleMenu(
                        text: 'errorStyle',
                        value: state.appliesErrorStyle,
                        onToggled: (_) {
                          viewModel.toggleAppliesErrorStyle();
                        },
                      ),
                    ].intersperse(const SizedBox(height: 32)).toList(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
