import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:dismantling/list_view/components/list_state.dart';
import 'package:dismantling/list_view/model/list_view_constructor_type.dart';

final listViewModel =
    StateNotifierProvider.autoDispose<_ListViewModel, ListState>(
  (ref) => _ListViewModel(),
);

class _ListViewModel extends StateNotifier<ListState> {
  _ListViewModel() : super(ListState.empty());

  void itemCountUpdated(int itemCount) {
    state = state.itemCountUpdated(itemCount);
  }

  void constructorTypeUpdated(ListViewConstructorType type) {
    state = state.constructorTypeUpdated(type);
  }

  void scrollDirectionToggled() {
    state = state.scrollDirectionToggled();
  }

  void reverseToggled() {
    state = state.reverseToggled();
  }

  void primaryToggled() {
    state = state.primaryToggled();
  }

  void physicsUpdated(ScrollPhysics physics) {
    state = state.physicsUpdated(physics);
  }

  void shrinkWrapToggled() {
    state = state.shrinkWrapToggled();
  }
}
