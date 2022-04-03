import 'package:flutter/material.dart' hide MenuItem;

import 'package:dismantling/menu/components/menu_item.dart';
import 'package:dismantling/menu/enum/menu_type.dart';
import 'package:dismantling/selectable_text/screen/selectable_text_screen.dart';
import 'package:dismantling/text_field/screens/text_field_screen.dart';

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
              switch (type) {
                case MenuType.selectableText:
                  Navigator.of(context).push<void>(
                    SelectableTextScreen.route(),
                  );
                  break;
                case MenuType.textField:
                  Navigator.of(context).push<void>(
                    TextFieldScreen.route(),
                  );
              }
            },
          );
        },
        separatorBuilder: (context, index) => const SizedBox(height: 8),
      ),
    );
  }
}
