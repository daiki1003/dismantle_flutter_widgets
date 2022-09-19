import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:dismantling/list_view/components/list_state.dart';
import 'package:dismantling/list_view/model/list_view_constructor_type.dart';

final listViewModel =
    StateNotifierProvider.autoDispose<_ListViewModel, ListState>(
  (ref) => _ListViewModel(),
);

class _ListViewModel extends StateNotifier<ListState> {
  _ListViewModel() : super(ListState.empty());

  void constructorTypeUpdated(ListViewConstructorType type) {
    state = state.constructorTypeUpdated(type);
  }

  void scrollDirectionToggled() {
    state = state.scrollDirectionToggled();
  }

  void reverseToggled() {
    state = state.reverseToggled();
  }
}
