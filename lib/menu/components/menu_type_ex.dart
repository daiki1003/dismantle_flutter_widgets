import 'package:dismantling/menu/enum/menu_type.dart';

extension MenuTypeEx on MenuType {
  String get title {
    return '${name[0].toUpperCase()}${name.substring(1, name.length)}';
  }
}
