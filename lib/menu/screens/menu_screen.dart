import 'package:flutter/material.dart' hide MenuItem;

import 'package:dismantling/menu/components/menu_item.dart';
import 'package:dismantling/menu/enum/menu_type.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Menu List')),
      body: ListView.separated(
        itemCount: MenuType.values.length,
        itemBuilder: (context, index) {
          final type = MenuType.values[index];
          return MenuItem(
            type,
            onPressed: (type) {
              //
            },
          );
        },
        separatorBuilder: (context, index) => const SizedBox(height: 8),
      ),
    );
  }
}
