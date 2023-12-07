import 'package:dismantling/components/select_menu.dart';
import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intersperse/intersperse.dart';

import 'package:dismantling/components/toggle_menu.dart';
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
