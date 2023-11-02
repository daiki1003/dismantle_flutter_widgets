import 'dart:math';

import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intersperse/intersperse.dart';

import 'package:dismantling/components/select_menu.dart';
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
    final state = ref.watch(listViewModel);
    final notifier = ref.watch(listViewModel.notifier);

    final theme = Theme.of(context).textTheme;

    const itemCount = 100;
    Widget createColorBox(int index) {
      return Container(
        height: 25,
        width: 200,
        color: Color.fromRGBO(
          Random().nextInt(255),
          Random().nextInt(255),
          Random().nextInt(255),
          1,
        ),
        child: Center(
          child: Text('item: ${index + 1}', style: theme.titleLarge),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text('ListView')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.4,
                child: switch (state.constructorType) {
                  ListViewConstructorType.normal => ListView(
                      scrollDirection: state.scrollDirection,
                      reverse: state.reverse,
                      primary: state.primary,
                      children: List.generate(itemCount, createColorBox),
                    ),
                  ListViewConstructorType.builder => ListView.builder(
                      scrollDirection: state.scrollDirection,
                      reverse: state.reverse,
                      primary: state.primary,
                      itemCount: itemCount,
                      itemBuilder: (context, index) => createColorBox(index),
                    ),
                  ListViewConstructorType.separated => ListView.separated(
                      scrollDirection: state.scrollDirection,
                      reverse: state.reverse,
                      primary: state.primary,
                      itemCount: itemCount,
                      separatorBuilder: (context, index) => const Divider(),
                      itemBuilder: (context, index) => createColorBox(index),
                    ),
                },
              ),
              const SizedBox(height: 32),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
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
