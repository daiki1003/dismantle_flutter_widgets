import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:dismantling/selectable_text/view_model/selectable_text_view_model.dart';

class SelectableTextScreen extends HookConsumerWidget {
  const SelectableTextScreen({
    super.key,
  });

  static Route<void> route() {
    return MaterialPageRoute(
      builder: (_) => const SelectableTextScreen(),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(selectableTextViewModel);
    final notifier = ref.watch(selectableTextViewModel.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('SelectableText')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              SelectableText(
                'あいうえおかきくけこ\n'
                'abcdefghijklmnopqrstuvwxyz\n'
                'あいうえおabcdefghijklmnoかきくけこpqrstuvwxyz\n'
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
                'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
                ' Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris',
                style: const TextStyle(
                  fontSize: 24,
                  height: 1.2,
                ),
                showCursor: state.showCursor,
              ),
              const SizedBox(height: 32),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      _ToggleButton(
                        text: 'showCursor',
                        value: state.showCursor,
                        onToggled: (value) => notifier.showCursorToggled(),
                      ),
                    ],
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

class _ToggleButton extends StatelessWidget {
  const _ToggleButton({
    required this.text,
    required this.value,
    required this.onToggled,
  });

  final String text;
  final bool value;
  final ValueChanged<bool> onToggled;

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
