import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:dismantling/list_view/components/list_state.dart';
import 'package:dismantling/list_view/model/list_view_constructor_type.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'list_view_model.g.dart';

@riverpod
class ListViewModel extends _$ListViewModel {
  @override
  ListState build() {
    return ListState.empty();
  }

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

  void itemExtentUpdated(double itemExtent) {
    state = state.itemExtentUpdated(itemExtent);
  }

  void withProtoTypeItemToggled() {
    state = state.withProtoTypeItemToggled();
  }

  void addAutomaticKeepAlivesToggled() {
    state = state.addAutomaticKeepAlivesToggled();
  }

  void addRepaintBoundariesToggled() {
    state = state.addRepaintBoundariesToggled();
  }

  void addSemanticIndexesToggled() {
    state = state.addSemanticIndexesToggled();
  }

  void cacheExtentUpdated(double cacheExtent) {
    state = state.cacheExtentUpdated(cacheExtent);
  }

  void semanticChildCountUpdated(int semanticChildCount) {
    state = state.semanticChildCountUpdated(semanticChildCount);
  }

  void dragStartBehaviorUpdated(DragStartBehavior dragStartBehavior) {
    state = state.dragStartBehaviorUpdated(dragStartBehavior);
  }

  void keyboardDismissBehaviorUpdated(
    ScrollViewKeyboardDismissBehavior keyboardDismissBehavior,
  ) {
    state = state.keyboardDismissBehaviorUpdated(keyboardDismissBehavior);
  }

  void withRestorationIdToggled() {
    state = state.withRestorationIdToggled();
  }

  void clipBehaviorUpdated(Clip clipBehavior) {
    state = state.clipBehaviorUpdated(clipBehavior);
  }

  void hitTestBehaviorUpdated(HitTestBehavior hitTestBehavior) {
    state = state.hitTestBehaviorUpdated(hitTestBehavior);
  }
}
