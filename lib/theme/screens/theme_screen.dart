import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intersperse/intersperse.dart';

class ThemeScreen extends HookConsumerWidget {
  const ThemeScreen({
    super.key,
  });

  static Route<void> route() {
    return MaterialPageRoute(
      builder: (_) => const ThemeScreen(),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isEnabledState = useState(true);
    final bottomNavigationBarIndexState = useState(0);

    final controller = useTabController(initialLength: 2);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme'),
        actions: [
          Switch.adaptive(
            value: isEnabledState.value,
            onChanged: (v) => isEnabledState.value = v,
          ),
        ],
        bottom: TabBar(
          controller: controller,
          tabs: const [
            Tab(text: 'Tab A'),
            Tab(text: 'Tab B'),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          //②child:としてListViewを配置
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              //　子要素としてはListTileを入れる
              leading: Icon(Icons.message),
              title: Text('Messages'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Expanded(
                child: Scrollbar(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        ...<Widget>[
                          const _Header(
                            title: 'Assets, images, and icon widgets',
                          ),
                          const _AssetsAndIcons(),
                          const _Header(
                            title: 'Basic Widgets',
                          ),
                          _Basics(isEnabled: isEnabledState.value),
                          const _Header(
                            title: 'Cupertino(iOS-style) widgets',
                          ),
                          _Cupertinos(isEnabled: isEnabledState.value),
                          const _Header(
                            title: 'Material Components',
                          ),
                          _MaterialComponents(isEnabled: isEnabledState.value),
                        ].intersperse(
                          const SizedBox(height: 20),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: isEnabledState.value ? () {} : null,
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomNavigationBarIndexState.value,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'ホーム',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_outline),
            label: 'サンプル',
          ),
        ],
        onTap: (value) => bottomNavigationBarIndexState.value = value,
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        textAlign: TextAlign.start,
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class _AssetsAndIcons extends StatelessWidget {
  const _AssetsAndIcons();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.favorite),
            Icon(Icons.audiotrack),
            Icon(Icons.beach_access),
          ],
        ),
        CircleAvatar(),
      ],
    );
  }
}

class _Basics extends StatelessWidget {
  const _Basics({
    required this.isEnabled,
  });

  final bool isEnabled;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...<Widget>[
          ElevatedButton(
            onPressed: isEnabled ? () {} : null,
            child: const Text('Elevated Button'),
          ),
          ElevatedButton.icon(
            icon: const Icon(Icons.favorite_outline),
            label: const Text('Elevated Button Icon'),
            onPressed: isEnabled ? () {} : null,
          ),
          const FlutterLogo(),
          const Placeholder(),
          const Text('Sample Text'),
        ].intersperse(const SizedBox(height: 20)),
      ],
    );
  }
}

class _Cupertinos extends StatelessWidget {
  const _Cupertinos({
    required this.isEnabled,
  });

  final bool isEnabled;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...<Widget>[
          CupertinoButton(
            child: const Text('Show CupertinoActionSheet'),
            onPressed: () {
              showBottomSheet<void>(
                context: context,
                builder: (context) {
                  return CupertinoActionSheet(
                    title: const Text('Title'),
                    message: const Text('Message'),
                    actions: [
                      CupertinoActionSheetAction(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('CupertinoActionSheetAction'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
          const CupertinoActivityIndicator(),
          CupertinoButton(
            child: const Text('Show CupertinoAlertDialog'),
            onPressed: () {
              showDialog<void>(
                context: context,
                builder: (_) {
                  return CupertinoAlertDialog(
                    title: const Text('Title'),
                    content: const Text('content'),
                    actions: [
                      CupertinoDialogAction(
                        child: const Text('OK'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      CupertinoDialogAction(
                        isDestructiveAction: true,
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Cancel'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
          CupertinoButton(
            onPressed: isEnabled ? () {} : null,
            child: const Text('Cupertino Button'),
          ),
          CupertinoContextMenu(
            actions: [
              CupertinoContextMenuAction(
                onPressed: () {
                  Navigator.pop(context);
                },
                isDefaultAction: true,
                trailingIcon: CupertinoIcons.doc_on_clipboard_fill,
                child: const Text('Copy'),
              ),
              CupertinoContextMenuAction(
                onPressed: () {
                  Navigator.pop(context);
                },
                trailingIcon: CupertinoIcons.share,
                child: const Text('Share  '),
              ),
              CupertinoContextMenuAction(
                onPressed: () {
                  Navigator.pop(context);
                },
                trailingIcon: CupertinoIcons.heart,
                child: const Text('Favorite'),
              ),
              CupertinoContextMenuAction(
                onPressed: () {
                  Navigator.pop(context);
                },
                isDestructiveAction: true,
                trailingIcon: CupertinoIcons.delete,
                child: const Text('Delete'),
              ),
            ],
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: CupertinoColors.systemYellow,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const FlutterLogo(size: 500),
            ),
          ),
          CupertinoButton(
            child: const Text('Show CupertinoDatePicker'),
            onPressed: () {
              showCupertinoModalPopup<void>(
                context: context,
                builder: (context) {
                  return Container(
                    height: 250,
                    color: Colors.white,
                    child: CupertinoDatePicker(onDateTimeChanged: (_) {}),
                  );
                },
              );
            },
          ),
          CupertinoButton(
            child: const Text('Show CupertinoPicker'),
            onPressed: () {
              showCupertinoModalPopup<void>(
                context: context,
                builder: (context) {
                  return Container(
                    height: 250,
                    color: Colors.white,
                    child: CupertinoPicker(
                      itemExtent: 48,
                      onSelectedItemChanged: (value) {},
                      children: List.generate(
                        10,
                        (index) => Container(
                          alignment: Alignment.center,
                          child: Text(index.toString()),
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ),
          const CupertinoSearchTextField(),
          CupertinoSegmentedControl(
            children: Map.fromEntries(
              List.generate(
                3,
                (index) => MapEntry(
                  index,
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 8,
                    ),
                    child: Text(index.toString()),
                  ),
                ),
              ),
            ),
            onValueChanged: (_) {},
          ),
          CupertinoSlider(value: 0.5, onChanged: isEnabled ? (_) {} : null),
          CupertinoSlidingSegmentedControl(
            groupValue: 0,
            children: Map.fromEntries(
              List.generate(
                3,
                (index) => MapEntry(
                  index,
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 8,
                    ),
                    child: Text(index.toString()),
                  ),
                ),
              ),
            ),
            onValueChanged: (_) {},
          ),
          // TODO(ashdik): CupertinoTabBar
          const CupertinoTextField(),
          CupertinoButton(
            child: const Text('Show CupertinoTimerPicker'),
            onPressed: () {
              showCupertinoModalPopup<void>(
                context: context,
                builder: (context) {
                  return Container(
                    height: 250,
                    color: Colors.white,
                    child: CupertinoTimerPicker(
                      onTimerDurationChanged: (value) {},
                    ),
                  );
                },
              );
            },
          ),
        ].intersperse(const SizedBox(height: 20)),
      ],
    );
  }
}

class _MaterialComponents extends StatelessWidget {
  const _MaterialComponents({
    required this.isEnabled,
  });

  final bool isEnabled;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...<Widget>[
          // TODO(ashdik): TabBar
          DropdownButton<int>(
            items: List.generate(
              5,
              (index) => DropdownMenuItem(
                value: index,
                child: Text(index.toString()),
              ),
            ),
            onChanged: isEnabled ? (value) {} : null,
          ),
          const Divider(),
          const SelectableText('abcdefghijklmnopqrstuvwxyz'),
          ElevatedButton(
            onPressed: isEnabled
                ? () {
                    ScaffoldMessenger.of(context).showMaterialBanner(
                      MaterialBanner(
                        content: const Text('Material Banner'),
                        actions: [
                          TextButton(
                            onPressed: isEnabled
                                ? ScaffoldMessenger.of(context)
                                    .hideCurrentMaterialBanner
                                : null,
                            child: const Text('Hide'),
                          ),
                        ],
                      ),
                    );
                  }
                : null,
            child: const Text('Material Banner'),
          ),
          IconButton(
            onPressed: isEnabled ? () {} : null,
            icon: const Icon(Icons.add),
          ),
          OutlinedButton(
            onPressed: isEnabled ? () {} : null,
            child: const Text('Outlined Button'),
          ),
          PopupMenuButton<int>(
            itemBuilder: (context) {
              return List.generate(
                5,
                (index) => PopupMenuItem(child: Text(index.toString())),
              );
            },
          ),
          TextButton(
            onPressed: isEnabled ? () {} : null,
            child: const Text('Text Button'),
          ),
          Checkbox(
            value: true,
            onChanged: isEnabled ? (_) {} : null,
          ),
          TextButton(
            onPressed: isEnabled
                ? () {
                    showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime.now(),
                      lastDate: DateTime.now().add(const Duration(days: 365)),
                      initialDatePickerMode: DatePickerMode.year,
                      initialEntryMode: DatePickerEntryMode.input,
                    );
                  }
                : null,
            child: const Text('showDatePicker'),
          ),
          TextButton(
            onPressed: isEnabled
                ? () {
                    showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.now(),
                      helpText: 'HelpText',
                    );
                  }
                : null,
            child: const Text('showTimePicker'),
          ),
          ToggleButtons(
            isSelected: const [true, false, true],
            onPressed: isEnabled ? (index) {} : null,
            children: const [
              Text('1'),
              Text('2'),
              Text('3'),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(
              3,
              (index) => Radio<int>(
                value: 0,
                groupValue: index,
                onChanged: isEnabled ? (_) {} : null,
              ),
            ),
          ),
          ...List.generate(
            3,
            (index) => RadioListTile(
              value: 0,
              groupValue: index,
              onChanged: (value) {},
            ),
          ),
          Slider(
            value: 0.5,
            onChanged: isEnabled ? (_) {} : null,
          ),
          Switch(
            value: true,
            onChanged: isEnabled ? (v) {} : null,
          ),
          const TextField(
            decoration: InputDecoration(
              hintText: 'Hint',
            ),
          ),
          TextButton(
            onPressed: () {
              showDialog<void>(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Title'),
                    content: const Text('Content'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('OK'),
                      ),
                    ],
                  );
                },
              );
            },
            child: const Text('AlertDialog'),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: List.generate(
              6,
              (index) {
                return ElevatedButton(
                  onPressed: isEnabled ? () {} : null,
                  child: Text(index.toString()),
                );
              },
            ),
          ),
          TextButton(
            onPressed: () {
              showBottomSheet<void>(
                context: context,
                builder: (context) {
                  return const SizedBox(
                    width: double.infinity,
                    height: 200,
                    child: Row(
                      children: [
                        Icon(Icons.pentagon),
                        SizedBox(width: 20),
                        Text('asdf'),
                      ],
                    ),
                  );
                },
              );
            },
            child: const Text('BottomSheet'),
          ),
          const ExpansionTile(
            title: Text('Text'),
            children: [
              Text('aaa'),
              Text('aaa'),
              Text('aaa'),
              Text('aaa'),
            ],
          ),
          ExpansionPanelList(
            children: [
              ExpansionPanel(
                headerBuilder: (context, isExpanded) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Text(isExpanded ? 'Close' : 'Open'),
                  );
                },
                isExpanded: true,
                body: const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: Text('Expanded!'),
                ),
              ),
            ],
          ),
          TextButton(
            onPressed: () {
              showDialog<void>(
                context: context,
                builder: (context) {
                  return const SimpleDialog(
                    title: Text('Title'),
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Text('Child 1'),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Text('Child 2'),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Text('Child 3'),
                      ),
                    ],
                  );
                },
              );
            },
            child: const Text('SimpleDialog'),
          ),
          TextButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text('Snackbar'),
                  action: SnackBarAction(
                    label: 'Action',
                    onPressed: () {
                      ScaffoldMessenger.of(context).clearSnackBars();
                    },
                  ),
                ),
              );
            },
            child: const Text('Snackbar'),
          ),
          const Card(
            child: Padding(
              padding: EdgeInsets.all(24),
              child: Text('aaa'),
            ),
          ),
          Wrap(
            spacing: 8,
            runSpacing: 4,
            children: [
              const Chip(label: Text('Chip')),
              const RawChip(label: Text('RawChip')),
              const InputChip(label: Text('InputChip')),
              FilterChip(
                label: const Text('FilterChip'),
                onSelected: (value) {},
                selected: true,
              ),
              const ChoiceChip(label: Text('ChoiceChip'), selected: true),
              const ActionChip(label: Text('ActionChip')),
            ],
          ),
          const CircularProgressIndicator(),
          DataTable(
            columns: const [
              DataColumn(label: Text('Column 1')),
              DataColumn(label: Text('Column 2')),
            ],
            rows: const [
              DataRow(
                cells: [
                  DataCell(Text('Cell 1')),
                  DataCell(Text('Cell 2')),
                ],
              ),
            ],
          ),
          const LinearProgressIndicator(),
          const Tooltip(message: 'Tooltip'),
          const Divider(
            height: 8,
            thickness: 4,
          ),
          ListTile(
            leading: const Icon(Icons.add),
            title: const Text('Title'),
            subtitle: const Text('Subtitle'),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Stepper(
            steps: const [
              Step(
                title: Text('Step 1'),
                content: Text('Content 1'),
                isActive: true,
                label: Text('Label 1'),
              ),
              Step(title: Text('Step 2'), content: Text('Content 2')),
              Step(title: Text('Step 3'), content: Text('Content 3')),
            ],
          ),
        ].intersperse(const SizedBox(height: 20)),
      ],
    );
  }
}
