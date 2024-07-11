import 'package:flutter/material.dart';

import 'package:intersperse/intersperse.dart';

class Section extends StatelessWidget {
  const Section({
    super.key,
    required this.sectionTitle,
    required this.children,
  });

  final String sectionTitle;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          sectionTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: 16),
        ...children.intersperse(const SizedBox(height: 8)),
      ],
    );
  }
}
