import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intersperse/intersperse.dart';

import 'package:dismantling/components/select_menu.dart';
import 'package:dismantling/components/slider_menu.dart';
import 'package:dismantling/components/toggle_button.dart';
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
    final state = ref.watch(selectableTextViewModelProvider);
    final notifier = ref.watch(selectableTextViewModelProvider.notifier);

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
                'sed do eiusmod tempor incididunt'
                ' ut labore et dolore magna aliqua.'
                ' Ut enim ad minim veniam, quis nostrud'
                ' exercitation ullamco laboris',
                style: const TextStyle(
                  fontSize: 24,
                  height: 1.2,
                ),
                showCursor: state.showCursor,
                cursorWidth: state.cursorWidth,
                cursorHeight: state.cursorHeight,
                cursorRadius: state.cursorRadius,
                selectionWidthStyle: state.selectionWidthStyle,
                selectionHeightStyle: state.selectionHeightStyle,
                dragStartBehavior: state.dragStartBehavior,
                enableInteractiveSelection: state.enableInteractiveSelection,
                selectionControls: state.selectionControls,
                scrollPhysics: state.scrollPhysics,
                textWidthBasis: state.textWidthBasis,
              ),
              const SizedBox(height: 32),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      ...<Widget>[
                        ToggleButton(
                          text: 'showCursor',
                          value: state.showCursor,
                          onToggled: (value) => notifier.showCursorToggled(),
                        ),
                        if (state.showCursor) ...[
                          SliderMenu(
                            label: 'cursorWidth',
                            value: state.cursorWidth,
                            min: 1,
                            max: 20,
                            divisions: 19,
                            onChanged: notifier.cursorWidthUpdated,
                          ),
                          SliderMenu(
                            label: 'cursorHeight',
                            value: state.cursorHeight ?? 1,
                            min: 1,
                            max: 50,
                            divisions: 49,
                            onChanged: notifier.cursorHeightUpdated,
                          ),
                          // TODO(ashdik): Add Radius.elliptical version
                          SliderMenu(
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
                        ],
                        ToggleButton(
                          text: 'enableInteractiveSelection',
                          value: state.enableInteractiveSelection,
                          onToggled: (value) =>
                              notifier.enableInteractiveSelectionToggled(),
                        ),
                        SelectMenu<BoxWidthStyle>(
                          label: 'selectionWidthStyle',
                          choices: BoxWidthStyle.values,
                          value: state.selectionWidthStyle,
                          valueTextBuilder: (value) => value.name,
                          onSelected: notifier.selectionWidthStyleUpdated,
                        ),
                        SelectMenu<BoxHeightStyle>(
                          label: 'selectionHeightStyle',
                          choices: BoxHeightStyle.values,
                          value: state.selectionHeightStyle,
                          valueTextBuilder: (value) => value.name,
                          onSelected: notifier.selectionHeightStyleUpdated,
                        ),
                        SelectMenu<DragStartBehavior>(
                          label: 'dragStartBehavior',
                          choices: DragStartBehavior.values,
                          value: state.dragStartBehavior,
                          valueTextBuilder: (value) => value.name,
                          onSelected: notifier.dragStartBehaviorUpdated,
                        ),
                        // TODO(ashdik): Investigate how to apply dynamically.
                        SelectMenu<TextSelectionControls>(
                          label: 'selectionControls (未対応)',
                          choices: [
                            cupertinoTextSelectionControls,
                            materialTextSelectionControls,
                          ],
                          value: state.selectionControls,
                          valueTextBuilder: (value) {
                            if (value is CupertinoTextSelectionControls) {
                              return 'cupertino';
                            }
                            if (value is MaterialTextSelectionControls) {
                              return 'material';
                            }
                            throw UnimplementedError();
                          },
                          onSelected: notifier.selectionControlsUpdated,
                        ),
                        SelectMenu<ScrollPhysics>(
                          label: 'scrollPhysics',
                          choices: const [
                            NeverScrollableScrollPhysics(),
                            AlwaysScrollableScrollPhysics(),
                            BouncingScrollPhysics(),
                            ClampingScrollPhysics(),
                          ],
                          value: state.scrollPhysics,
                          valueTextBuilder: (value) {
                            if (value is NeverScrollableScrollPhysics) {
                              return 'never';
                            }
                            if (value is AlwaysScrollableScrollPhysics) {
                              return 'always';
                            }
                            if (value is BouncingScrollPhysics) {
                              return 'bouncing';
                            }
                            if (value is ClampingScrollPhysics) {
                              return 'clamping';
                            }
                            throw UnimplementedError();
                          },
                          onSelected: notifier.scrollPhysicsUpdated,
                        ),
                        SelectMenu<TextWidthBasis>(
                          label: 'textWidthBasis',
                          choices: TextWidthBasis.values,
                          value: state.textWidthBasis,
                          valueTextBuilder: (value) => value.name,
                          onSelected: notifier.textWidthBasisUpdated,
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
