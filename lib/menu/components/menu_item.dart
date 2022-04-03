import 'package:flutter/material.dart';

import 'package:dismantling/components/callbacks.dart';
import 'package:dismantling/menu/components/menu_type_ex.dart';
import 'package:dismantling/menu/enum/menu_type.dart';

class MenuItem extends StatelessWidget {
  const MenuItem(
    this.type, {
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final ValueCallback<MenuType> onPressed;

  final MenuType type;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => onPressed(type),
      title: Text(type.title),
    );
  }
}
