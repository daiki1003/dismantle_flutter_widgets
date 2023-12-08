import 'package:flutter/material.dart';

class ToggleMenu extends StatelessWidget {
  const ToggleMenu({
    super.key,
    required this.text,
    required this.value,
    required this.onToggled,
  });

  final String text;
  final bool value;
  final ValueChanged<bool>? onToggled;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: theme.textTheme.titleLarge),
        Switch.adaptive(value: value, onChanged: onToggled),
      ],
    );
  }
}
