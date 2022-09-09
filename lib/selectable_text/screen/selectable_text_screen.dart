import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intersperse/intersperse.dart';

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
                cursorWidth: state.cursorWidth,
                cursorHeight: state.cursorHeight,
                cursorRadius: state.cursorRadius,
              ),
              const SizedBox(height: 32),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      ...<Widget>[
                        _ToggleButton(
                          text: 'showCursor',
                          value: state.showCursor,
                          onToggled: (value) => notifier.showCursorToggled(),
                        ),
                        _SliderMenu(
                          label: 'cursorWidth',
                          value: state.cursorWidth,
                          min: 1,
                          max: 20,
                          divisions: 19,
                          onChanged: notifier.cursorWidthUpdated,
                        ),
                        _SliderMenu(
                          label: 'cursorHeight',
                          value: state.cursorHeight ?? 1,
                          min: 1,
                          max: 50,
                          divisions: 49,
                          onChanged: notifier.cursorHeightUpdated,
                        ),
                        // TODO(ashdik): Add Radius.elliptical version
                        _SliderMenu(
                          label: 'cursorRadius',
                          value: state.cursorRadius?.x ?? 0,
                          min: 0,
                          max: 25,
                          divisions: 50,
                          onChanged: (value) {
                            notifier.cursorRadiusUpdated(
                              Radius.circular(value),
                            );
                          },
                        ),
                      ].intersperse(
                        const SizedBox(height: 40),
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

class _SliderMenu extends StatelessWidget {
  const _SliderMenu({
    required this.label,
    required this.value,
    required this.min,
    required this.max,
    required this.divisions,
    required this.onChanged,
  });

  final String label;
  final double value;
  final double min;
  final double max;
  final int divisions;

  final ValueChanged<double> onChanged;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          label,
          style: theme.textTheme.headline6!.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(min.toString(), style: theme.textTheme.caption),
            Text(
              value.toString(),
              style: theme.textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(max.toString(), style: theme.textTheme.caption),
          ],
        ),
        Slider.adaptive(
          value: value,
          min: min,
          max: max,
          divisions: divisions,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
