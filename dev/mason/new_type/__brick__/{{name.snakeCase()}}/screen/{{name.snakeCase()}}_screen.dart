import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:dismantling/components/select_menu.dart';
import 'package:dismantling/components/slider_menu.dart';
import 'package:dismantling/components/toggle_menu.dart';
import 'package:dismantling/{{name.snakeCase()}}/view_model/{{name.snakeCase()}}_view_model.dart';

class {{name.pascalCase()}}Screen extends HookConsumerWidget {
  const {{name.pascalCase()}}Screen({
    super.key,
  });

  static Route<void> route() {
    return MaterialPageRoute(
      builder: (_) => const {{name.pascalCase()}}Screen(),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(
      {{name.camelCase()}}ViewModelProvider,
    );
    final viewModel = ref.watch(
      {{name.camelCase()}}ViewModelProvider.notifier,
    );

    return Scaffold(
      appBar: AppBar(title: const Text('{{name.pascalCase()}}')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: 
        ),
      ),
    );
  }
}
