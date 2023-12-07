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
