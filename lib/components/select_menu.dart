import 'package:flutter/material.dart';

class SelectMenu<T> extends StatelessWidget {
  const SelectMenu({
    super.key,
    required this.label,
    required this.choices,
    required this.value,
    required this.valueTextBuilder,
    required this.onSelected,
  });

  final String label;
  final List<T> choices;
  final T? value;
  final String Function(T) valueTextBuilder;
  final ValueChanged<T> onSelected;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          label,
          style: textTheme.titleLarge,
        ),
        const SizedBox(height: 16),
        Wrap(
          spacing: 4,
          runSpacing: 4,
          children: [
            for (final choice in choices)
              InkWell(
                onTap: () => onSelected(choice),
                child: Chip(
                  backgroundColor: value == choice
                      ? Theme.of(context).primaryColorLight
                      : null,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  labelPadding: const EdgeInsets.symmetric(horizontal: 8),
                  label: Text('.${valueTextBuilder(choice).split('.').last}'),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
