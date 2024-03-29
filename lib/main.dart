import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:dismantling/menu/screens/menu_screen.dart';

void main() {
  runApp(
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        applyElevationOverlayColor: true,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        splashFactory: InkSparkle.splashFactory,
        visualDensity: VisualDensity.compact,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blueGrey,
          elevation: 0,
        ),
      ),
      home: const MenuScreen(),
    );
  }
}
