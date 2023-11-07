import 'package:flutter/material.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:dismantling/list_view/model/list_view_constructor_type.dart';

part 'list_state.freezed.dart';

@freezed
class ListState with _$ListState {
  const factory ListState({
    @Default(100) int itemCount,
    @Default(ListViewConstructorType.normal)
    ListViewConstructorType constructorType,
    @Default(Axis.vertical) Axis scrollDirection,
    @Default(false) bool reverse,
    @Default(false) bool primary,
    ScrollPhysics? physics,
    @Default(false) bool shrinkWrap,
    @Default(25.0) double itemExtent,
    @Default(false) bool withPrototypeItem,
    @Default(true) bool addAutomaticKeepAlives,
    @Default(true) bool addRepaintBoundaries,
  }) = _ListState;

  factory ListState.empty() {
    return const ListState();
  }
}

extension ListStateEx on ListState {
  ListState itemCountUpdated(int itemCount) {
    return copyWith(itemCount: itemCount);
  }

  ListState constructorTypeUpdated(ListViewConstructorType type) {
    return copyWith(constructorType: type);
  }

  ListState scrollDirectionToggled() {
    return copyWith(
      scrollDirection: switch (scrollDirection) {
        Axis.vertical => Axis.horizontal,
        Axis.horizontal => Axis.vertical,
      },
    );
  }

  ListState reverseToggled() {
    return copyWith(
      reverse: !reverse,
    );
  }

  ListState primaryToggled() {
    return copyWith(
      primary: !primary,
    );
  }

  ListState physicsUpdated(ScrollPhysics physics) {
    return copyWith(
      physics: physics,
    );
  }

  ListState shrinkWrapToggled() {
    return copyWith(
      shrinkWrap: !shrinkWrap,
    );
  }

  ListState itemExtentUpdated(double itemExtent) {
    return copyWith(
      itemExtent: itemExtent,
    );
  }

  ListState withProtoTypeItemToggled() {
    return copyWith(
      withPrototypeItem: !withPrototypeItem,
    );
  }

  ListState addAutomaticKeepAlivesToggled() {
    return copyWith(
      addAutomaticKeepAlives: !addAutomaticKeepAlives,
    );
  }

  ListState addRepaintBoundariesToggled() {
    return copyWith(
      addRepaintBoundaries: !addRepaintBoundaries,
    );
  }
}
