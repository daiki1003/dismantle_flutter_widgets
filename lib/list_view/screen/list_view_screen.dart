import 'dart:math';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intersperse/intersperse.dart';

import 'package:dismantling/components/select_menu.dart';
import 'package:dismantling/components/slider_menu.dart';
import 'package:dismantling/components/toggle_menu.dart';
import 'package:dismantling/list_view/model/list_view_constructor_type.dart';
import 'package:dismantling/list_view/view_model/list_view_model.dart';

class ListViewScreen extends HookConsumerWidget {
  const ListViewScreen({
    super.key,
  });

  static Route<void> route() {
    return MaterialPageRoute(
      builder: (_) => const ListViewScreen(),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(listViewModelProvider);
    final notifier = ref.watch(listViewModelProvider.notifier);

    final theme = Theme.of(context).textTheme;

    Widget createColorBox(int index) {
      final item = index + 1;
      return Material(
        color: Color.fromRGBO(
          Random().nextInt(255),
          Random().nextInt(255),
          Random().nextInt(255),
          1,
        ),
        child: InkWell(
          onTap: () => print('tapped: $item'),
          child: Center(
            child: Text('item: $item', style: theme.titleLarge),
          ),
        ),
      );
    }

    const prototypeItem = SizedBox(height: 25, width: 200);

    final scrollState = useValueNotifier<ScrollNotification?>(null);

    return Scaffold(
      appBar: AppBar(title: const Text('ListView')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.4,
                child: Scrollbar(
                  child: NotificationListener<ScrollNotification>(
                    onNotification: (notification) {
                      scrollState.value = notification;
                      return true;
                    },
                    child: switch (state.constructorType) {
                      ListViewConstructorType.normal => ListView(
                          scrollDirection: state.scrollDirection,
                          reverse: state.reverse,
                          primary: state.primary,
                          physics: state.physics,
                          shrinkWrap: state.shrinkWrap,
                          itemExtent: state.itemExtent,
                          prototypeItem:
                              state.withPrototypeItem ? prototypeItem : null,
                          addAutomaticKeepAlives: state.addAutomaticKeepAlives,
                          addRepaintBoundaries: state.addRepaintBoundaries,
                          addSemanticIndexes: state.addSemanticIndexes,
                          cacheExtent: state.cacheExtent,
                          semanticChildCount: state.semanticChildCount,
                          dragStartBehavior: state.dragStartBehavior,
                          keyboardDismissBehavior:
                              state.keyboardDismissBehavior,
                          restorationId:
                              state.withRestorationId ? 'test' : null,
                          clipBehavior: state.clipBehavior,
                          hitTestBehavior: state.hitTestBehavior,
                          children: List.generate(
                            state.itemCount,
                            createColorBox,
                          ),
                        ),
                      ListViewConstructorType.builder => ListView.builder(
                          scrollDirection: state.scrollDirection,
                          reverse: state.reverse,
                          primary: state.primary,
                          physics: state.physics,
                          shrinkWrap: state.shrinkWrap,
                          itemExtent: state.itemExtent,
                          prototypeItem:
                              state.withPrototypeItem ? prototypeItem : null,
                          addAutomaticKeepAlives: state.addAutomaticKeepAlives,
                          addRepaintBoundaries: state.addRepaintBoundaries,
                          addSemanticIndexes: state.addSemanticIndexes,
                          cacheExtent: state.cacheExtent,
                          semanticChildCount: state.semanticChildCount,
                          dragStartBehavior: state.dragStartBehavior,
                          keyboardDismissBehavior:
                              state.keyboardDismissBehavior,
                          restorationId:
                              state.withRestorationId ? 'test' : null,
                          clipBehavior: state.clipBehavior,
                          hitTestBehavior: state.hitTestBehavior,
                          itemCount: state.itemCount,
                          itemBuilder: (context, index) =>
                              createColorBox(index),
                        ),
                      ListViewConstructorType.separated => ListView.separated(
                          scrollDirection: state.scrollDirection,
                          reverse: state.reverse,
                          primary: state.primary,
                          physics: state.physics,
                          shrinkWrap: state.shrinkWrap,
                          // NOTICE: itemExtent is not supported.
                          // itemExtent: state.itemExtent,
                          // NOTICE: prototypeItem is not supported.
                          // prototypeItem:
                          //     state.withPrototypeItem ? prototypeItem : null,
                          addAutomaticKeepAlives: state.addAutomaticKeepAlives,
                          addRepaintBoundaries: state.addRepaintBoundaries,
                          addSemanticIndexes: state.addSemanticIndexes,
                          cacheExtent: state.cacheExtent,
                          // NOTICE: semanticChildCount is not supported.
                          // semanticChildCount: state.semanticChildCount,
                          dragStartBehavior: state.dragStartBehavior,
                          keyboardDismissBehavior:
                              state.keyboardDismissBehavior,
                          restorationId:
                              state.withRestorationId ? 'test' : null,
                          clipBehavior: state.clipBehavior,
                          hitTestBehavior: state.hitTestBehavior,
                          itemCount: state.itemCount,
                          separatorBuilder: (context, index) => const Divider(),
                          itemBuilder: (context, index) =>
                              createColorBox(index),
                        ),
                    },
                  ),
                ),
              ),
              const SizedBox(height: 32),
              SizedBox(
                width: MediaQuery.sizeOf(context).width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Scroll Notification',
                      style: theme.titleLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    ValueListenableBuilder(
                      valueListenable: scrollState,
                      builder: (context, value, _) {
                        if (value != null) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('metrics: ${value.metrics}'),
                              Text('depth: ${value.depth}'),
                            ],
                          );
                        } else {
                          return const SizedBox();
                        }
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      SliderMenu(
                        label: 'itemCount',
                        value: state.itemCount.toDouble(),
                        min: 0,
                        max: 200,
                        divisions: 200 ~/ 5,
                        onChanged: (itemCount) => notifier.itemCountUpdated(
                          itemCount.toInt(),
                        ),
                      ),
                      SliderMenu(
                        label: 'semanticChildCount',
                        value: state.semanticChildCount?.toDouble() ?? 0,
                        min: 0,
                        max: 200,
                        divisions: 200 ~/ 5,
                        onChanged: (semanticChildCount) =>
                            notifier.semanticChildCountUpdated(
                          semanticChildCount.toInt(),
                        ),
                      ),
                      SelectMenu<ListViewConstructorType>(
                        label: 'constructorType',
                        choices: ListViewConstructorType.values,
                        value: state.constructorType,
                        valueTextBuilder: (value) => value.name,
                        onSelected: notifier.constructorTypeUpdated,
                      ),
                      SelectMenu<Axis>(
                        label: 'scrollDirection',
                        choices: Axis.values,
                        value: state.scrollDirection,
                        valueTextBuilder: (value) => value.name,
                        onSelected: (_) => notifier.scrollDirectionToggled(),
                      ),
                      ToggleMenu(
                        text: 'reverse',
                        value: state.reverse,
                        onToggled: (_) => notifier.reverseToggled(),
                      ),
                      ToggleMenu(
                        text: 'primary',
                        value: state.primary,
                        onToggled: (_) => notifier.primaryToggled(),
                      ),
                      SelectMenu<ScrollPhysics>(
                        label: 'physics',
                        choices: const [
                          BouncingScrollPhysics(),
                          RangeMaintainingScrollPhysics(),
                          NeverScrollableScrollPhysics(),
                          AlwaysScrollableScrollPhysics(),
                          ClampingScrollPhysics(),
                        ],
                        value: state.physics,
                        valueTextBuilder: (value) => value.toString(),
                        onSelected: notifier.physicsUpdated,
                      ),
                      ToggleMenu(
                        text: 'shrinkWrap',
                        value: state.shrinkWrap,
                        onToggled: (_) => notifier.shrinkWrapToggled(),
                      ),
                      SliderMenu(
                        label: 'itemExtent',
                        value: state.itemExtent,
                        min: 0,
                        max: 100,
                        divisions: 100,
                        onChanged: notifier.itemExtentUpdated,
                      ),
                      SliderMenu(
                        label: 'cacheExtent',
                        value: state.cacheExtent ?? 0,
                        min: 0,
                        max: 100,
                        divisions: 100,
                        onChanged: notifier.cacheExtentUpdated,
                      ),
                      ToggleMenu(
                        text: 'protoTypeItem',
                        value: state.withPrototypeItem,
                        onToggled: (_) => notifier.withProtoTypeItemToggled(),
                      ),
                      ToggleMenu(
                        text: 'addAutomaticKeepAlives',
                        value: state.addAutomaticKeepAlives,
                        onToggled: (_) =>
                            notifier.addAutomaticKeepAlivesToggled(),
                      ),
                      ToggleMenu(
                        text: 'addRepaintBoundaries',
                        value: state.addRepaintBoundaries,
                        onToggled: (_) =>
                            notifier.addRepaintBoundariesToggled(),
                      ),
                      ToggleMenu(
                        text: 'withRestorationId',
                        value: state.withRestorationId,
                        onToggled: (_) => notifier.withRestorationIdToggled(),
                      ),
                      ToggleMenu(
                        text: 'addSemanticIndexes',
                        value: state.addSemanticIndexes,
                        onToggled: (_) => notifier.addSemanticIndexesToggled(),
                      ),
                      SelectMenu<DragStartBehavior>(
                        label: 'dragStartBehavior',
                        choices: DragStartBehavior.values,
                        value: state.dragStartBehavior,
                        valueTextBuilder: (value) => value.toString(),
                        onSelected: notifier.dragStartBehaviorUpdated,
                      ),
                      SelectMenu<ScrollViewKeyboardDismissBehavior>(
                        label: 'keyboardDismissBehavior',
                        choices: ScrollViewKeyboardDismissBehavior.values,
                        value: state.keyboardDismissBehavior,
                        valueTextBuilder: (value) => value.toString(),
                        onSelected: notifier.keyboardDismissBehaviorUpdated,
                      ),
                      SelectMenu<Clip>(
                        label: 'clipBehavior',
                        choices: Clip.values,
                        value: state.clipBehavior,
                        valueTextBuilder: (value) => value.toString(),
                        onSelected: notifier.clipBehaviorUpdated,
                      ),
                      SelectMenu<HitTestBehavior>(
                        label: 'hitTestBehavior',
                        choices: HitTestBehavior.values,
                        value: state.hitTestBehavior,
                        valueTextBuilder: (value) => value.name,
                        onSelected: notifier.hitTestBehaviorUpdated,
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
