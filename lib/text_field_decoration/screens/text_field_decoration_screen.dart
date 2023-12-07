import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
    return Scaffold(
      appBar: AppBar(title: const Text('TextField.decoration')),
      body: const SafeArea(
        child: Placeholder(),
      ),
    );
  }
}
