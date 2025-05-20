// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ListState {

 int get itemCount; ListViewConstructorType get constructorType; Axis get scrollDirection; bool get reverse; bool get primary; ScrollPhysics? get physics; bool get shrinkWrap; double get itemExtent; bool get withPrototypeItem; bool get addAutomaticKeepAlives; bool get addRepaintBoundaries; bool get addSemanticIndexes; double? get cacheExtent; int? get semanticChildCount; DragStartBehavior get dragStartBehavior; ScrollViewKeyboardDismissBehavior get keyboardDismissBehavior; bool get withRestorationId; Clip get clipBehavior; HitTestBehavior get hitTestBehavior;
/// Create a copy of ListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListStateCopyWith<ListState> get copyWith => _$ListStateCopyWithImpl<ListState>(this as ListState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListState&&(identical(other.itemCount, itemCount) || other.itemCount == itemCount)&&(identical(other.constructorType, constructorType) || other.constructorType == constructorType)&&(identical(other.scrollDirection, scrollDirection) || other.scrollDirection == scrollDirection)&&(identical(other.reverse, reverse) || other.reverse == reverse)&&(identical(other.primary, primary) || other.primary == primary)&&(identical(other.physics, physics) || other.physics == physics)&&(identical(other.shrinkWrap, shrinkWrap) || other.shrinkWrap == shrinkWrap)&&(identical(other.itemExtent, itemExtent) || other.itemExtent == itemExtent)&&(identical(other.withPrototypeItem, withPrototypeItem) || other.withPrototypeItem == withPrototypeItem)&&(identical(other.addAutomaticKeepAlives, addAutomaticKeepAlives) || other.addAutomaticKeepAlives == addAutomaticKeepAlives)&&(identical(other.addRepaintBoundaries, addRepaintBoundaries) || other.addRepaintBoundaries == addRepaintBoundaries)&&(identical(other.addSemanticIndexes, addSemanticIndexes) || other.addSemanticIndexes == addSemanticIndexes)&&(identical(other.cacheExtent, cacheExtent) || other.cacheExtent == cacheExtent)&&(identical(other.semanticChildCount, semanticChildCount) || other.semanticChildCount == semanticChildCount)&&(identical(other.dragStartBehavior, dragStartBehavior) || other.dragStartBehavior == dragStartBehavior)&&(identical(other.keyboardDismissBehavior, keyboardDismissBehavior) || other.keyboardDismissBehavior == keyboardDismissBehavior)&&(identical(other.withRestorationId, withRestorationId) || other.withRestorationId == withRestorationId)&&(identical(other.clipBehavior, clipBehavior) || other.clipBehavior == clipBehavior)&&(identical(other.hitTestBehavior, hitTestBehavior) || other.hitTestBehavior == hitTestBehavior));
}


@override
int get hashCode => Object.hashAll([runtimeType,itemCount,constructorType,scrollDirection,reverse,primary,physics,shrinkWrap,itemExtent,withPrototypeItem,addAutomaticKeepAlives,addRepaintBoundaries,addSemanticIndexes,cacheExtent,semanticChildCount,dragStartBehavior,keyboardDismissBehavior,withRestorationId,clipBehavior,hitTestBehavior]);

@override
String toString() {
  return 'ListState(itemCount: $itemCount, constructorType: $constructorType, scrollDirection: $scrollDirection, reverse: $reverse, primary: $primary, physics: $physics, shrinkWrap: $shrinkWrap, itemExtent: $itemExtent, withPrototypeItem: $withPrototypeItem, addAutomaticKeepAlives: $addAutomaticKeepAlives, addRepaintBoundaries: $addRepaintBoundaries, addSemanticIndexes: $addSemanticIndexes, cacheExtent: $cacheExtent, semanticChildCount: $semanticChildCount, dragStartBehavior: $dragStartBehavior, keyboardDismissBehavior: $keyboardDismissBehavior, withRestorationId: $withRestorationId, clipBehavior: $clipBehavior, hitTestBehavior: $hitTestBehavior)';
}


}

/// @nodoc
abstract mixin class $ListStateCopyWith<$Res>  {
  factory $ListStateCopyWith(ListState value, $Res Function(ListState) _then) = _$ListStateCopyWithImpl;
@useResult
$Res call({
 int itemCount, ListViewConstructorType constructorType, Axis scrollDirection, bool reverse, bool primary, ScrollPhysics? physics, bool shrinkWrap, double itemExtent, bool withPrototypeItem, bool addAutomaticKeepAlives, bool addRepaintBoundaries, bool addSemanticIndexes, double? cacheExtent, int? semanticChildCount, DragStartBehavior dragStartBehavior, ScrollViewKeyboardDismissBehavior keyboardDismissBehavior, bool withRestorationId, Clip clipBehavior, HitTestBehavior hitTestBehavior
});




}
/// @nodoc
class _$ListStateCopyWithImpl<$Res>
    implements $ListStateCopyWith<$Res> {
  _$ListStateCopyWithImpl(this._self, this._then);

  final ListState _self;
  final $Res Function(ListState) _then;

/// Create a copy of ListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? itemCount = null,Object? constructorType = null,Object? scrollDirection = null,Object? reverse = null,Object? primary = null,Object? physics = freezed,Object? shrinkWrap = null,Object? itemExtent = null,Object? withPrototypeItem = null,Object? addAutomaticKeepAlives = null,Object? addRepaintBoundaries = null,Object? addSemanticIndexes = null,Object? cacheExtent = freezed,Object? semanticChildCount = freezed,Object? dragStartBehavior = null,Object? keyboardDismissBehavior = null,Object? withRestorationId = null,Object? clipBehavior = null,Object? hitTestBehavior = null,}) {
  return _then(_self.copyWith(
itemCount: null == itemCount ? _self.itemCount : itemCount // ignore: cast_nullable_to_non_nullable
as int,constructorType: null == constructorType ? _self.constructorType : constructorType // ignore: cast_nullable_to_non_nullable
as ListViewConstructorType,scrollDirection: null == scrollDirection ? _self.scrollDirection : scrollDirection // ignore: cast_nullable_to_non_nullable
as Axis,reverse: null == reverse ? _self.reverse : reverse // ignore: cast_nullable_to_non_nullable
as bool,primary: null == primary ? _self.primary : primary // ignore: cast_nullable_to_non_nullable
as bool,physics: freezed == physics ? _self.physics : physics // ignore: cast_nullable_to_non_nullable
as ScrollPhysics?,shrinkWrap: null == shrinkWrap ? _self.shrinkWrap : shrinkWrap // ignore: cast_nullable_to_non_nullable
as bool,itemExtent: null == itemExtent ? _self.itemExtent : itemExtent // ignore: cast_nullable_to_non_nullable
as double,withPrototypeItem: null == withPrototypeItem ? _self.withPrototypeItem : withPrototypeItem // ignore: cast_nullable_to_non_nullable
as bool,addAutomaticKeepAlives: null == addAutomaticKeepAlives ? _self.addAutomaticKeepAlives : addAutomaticKeepAlives // ignore: cast_nullable_to_non_nullable
as bool,addRepaintBoundaries: null == addRepaintBoundaries ? _self.addRepaintBoundaries : addRepaintBoundaries // ignore: cast_nullable_to_non_nullable
as bool,addSemanticIndexes: null == addSemanticIndexes ? _self.addSemanticIndexes : addSemanticIndexes // ignore: cast_nullable_to_non_nullable
as bool,cacheExtent: freezed == cacheExtent ? _self.cacheExtent : cacheExtent // ignore: cast_nullable_to_non_nullable
as double?,semanticChildCount: freezed == semanticChildCount ? _self.semanticChildCount : semanticChildCount // ignore: cast_nullable_to_non_nullable
as int?,dragStartBehavior: null == dragStartBehavior ? _self.dragStartBehavior : dragStartBehavior // ignore: cast_nullable_to_non_nullable
as DragStartBehavior,keyboardDismissBehavior: null == keyboardDismissBehavior ? _self.keyboardDismissBehavior : keyboardDismissBehavior // ignore: cast_nullable_to_non_nullable
as ScrollViewKeyboardDismissBehavior,withRestorationId: null == withRestorationId ? _self.withRestorationId : withRestorationId // ignore: cast_nullable_to_non_nullable
as bool,clipBehavior: null == clipBehavior ? _self.clipBehavior : clipBehavior // ignore: cast_nullable_to_non_nullable
as Clip,hitTestBehavior: null == hitTestBehavior ? _self.hitTestBehavior : hitTestBehavior // ignore: cast_nullable_to_non_nullable
as HitTestBehavior,
  ));
}

}


/// @nodoc


class _ListState implements ListState {
  const _ListState({this.itemCount = 100, this.constructorType = ListViewConstructorType.normal, this.scrollDirection = Axis.vertical, this.reverse = false, this.primary = false, this.physics, this.shrinkWrap = false, this.itemExtent = 25.0, this.withPrototypeItem = false, this.addAutomaticKeepAlives = true, this.addRepaintBoundaries = true, this.addSemanticIndexes = true, this.cacheExtent, this.semanticChildCount, this.dragStartBehavior = DragStartBehavior.start, this.keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual, this.withRestorationId = true, this.clipBehavior = Clip.hardEdge, this.hitTestBehavior = HitTestBehavior.opaque});
  

@override@JsonKey() final  int itemCount;
@override@JsonKey() final  ListViewConstructorType constructorType;
@override@JsonKey() final  Axis scrollDirection;
@override@JsonKey() final  bool reverse;
@override@JsonKey() final  bool primary;
@override final  ScrollPhysics? physics;
@override@JsonKey() final  bool shrinkWrap;
@override@JsonKey() final  double itemExtent;
@override@JsonKey() final  bool withPrototypeItem;
@override@JsonKey() final  bool addAutomaticKeepAlives;
@override@JsonKey() final  bool addRepaintBoundaries;
@override@JsonKey() final  bool addSemanticIndexes;
@override final  double? cacheExtent;
@override final  int? semanticChildCount;
@override@JsonKey() final  DragStartBehavior dragStartBehavior;
@override@JsonKey() final  ScrollViewKeyboardDismissBehavior keyboardDismissBehavior;
@override@JsonKey() final  bool withRestorationId;
@override@JsonKey() final  Clip clipBehavior;
@override@JsonKey() final  HitTestBehavior hitTestBehavior;

/// Create a copy of ListState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListStateCopyWith<_ListState> get copyWith => __$ListStateCopyWithImpl<_ListState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListState&&(identical(other.itemCount, itemCount) || other.itemCount == itemCount)&&(identical(other.constructorType, constructorType) || other.constructorType == constructorType)&&(identical(other.scrollDirection, scrollDirection) || other.scrollDirection == scrollDirection)&&(identical(other.reverse, reverse) || other.reverse == reverse)&&(identical(other.primary, primary) || other.primary == primary)&&(identical(other.physics, physics) || other.physics == physics)&&(identical(other.shrinkWrap, shrinkWrap) || other.shrinkWrap == shrinkWrap)&&(identical(other.itemExtent, itemExtent) || other.itemExtent == itemExtent)&&(identical(other.withPrototypeItem, withPrototypeItem) || other.withPrototypeItem == withPrototypeItem)&&(identical(other.addAutomaticKeepAlives, addAutomaticKeepAlives) || other.addAutomaticKeepAlives == addAutomaticKeepAlives)&&(identical(other.addRepaintBoundaries, addRepaintBoundaries) || other.addRepaintBoundaries == addRepaintBoundaries)&&(identical(other.addSemanticIndexes, addSemanticIndexes) || other.addSemanticIndexes == addSemanticIndexes)&&(identical(other.cacheExtent, cacheExtent) || other.cacheExtent == cacheExtent)&&(identical(other.semanticChildCount, semanticChildCount) || other.semanticChildCount == semanticChildCount)&&(identical(other.dragStartBehavior, dragStartBehavior) || other.dragStartBehavior == dragStartBehavior)&&(identical(other.keyboardDismissBehavior, keyboardDismissBehavior) || other.keyboardDismissBehavior == keyboardDismissBehavior)&&(identical(other.withRestorationId, withRestorationId) || other.withRestorationId == withRestorationId)&&(identical(other.clipBehavior, clipBehavior) || other.clipBehavior == clipBehavior)&&(identical(other.hitTestBehavior, hitTestBehavior) || other.hitTestBehavior == hitTestBehavior));
}


@override
int get hashCode => Object.hashAll([runtimeType,itemCount,constructorType,scrollDirection,reverse,primary,physics,shrinkWrap,itemExtent,withPrototypeItem,addAutomaticKeepAlives,addRepaintBoundaries,addSemanticIndexes,cacheExtent,semanticChildCount,dragStartBehavior,keyboardDismissBehavior,withRestorationId,clipBehavior,hitTestBehavior]);

@override
String toString() {
  return 'ListState(itemCount: $itemCount, constructorType: $constructorType, scrollDirection: $scrollDirection, reverse: $reverse, primary: $primary, physics: $physics, shrinkWrap: $shrinkWrap, itemExtent: $itemExtent, withPrototypeItem: $withPrototypeItem, addAutomaticKeepAlives: $addAutomaticKeepAlives, addRepaintBoundaries: $addRepaintBoundaries, addSemanticIndexes: $addSemanticIndexes, cacheExtent: $cacheExtent, semanticChildCount: $semanticChildCount, dragStartBehavior: $dragStartBehavior, keyboardDismissBehavior: $keyboardDismissBehavior, withRestorationId: $withRestorationId, clipBehavior: $clipBehavior, hitTestBehavior: $hitTestBehavior)';
}


}

/// @nodoc
abstract mixin class _$ListStateCopyWith<$Res> implements $ListStateCopyWith<$Res> {
  factory _$ListStateCopyWith(_ListState value, $Res Function(_ListState) _then) = __$ListStateCopyWithImpl;
@override @useResult
$Res call({
 int itemCount, ListViewConstructorType constructorType, Axis scrollDirection, bool reverse, bool primary, ScrollPhysics? physics, bool shrinkWrap, double itemExtent, bool withPrototypeItem, bool addAutomaticKeepAlives, bool addRepaintBoundaries, bool addSemanticIndexes, double? cacheExtent, int? semanticChildCount, DragStartBehavior dragStartBehavior, ScrollViewKeyboardDismissBehavior keyboardDismissBehavior, bool withRestorationId, Clip clipBehavior, HitTestBehavior hitTestBehavior
});




}
/// @nodoc
class __$ListStateCopyWithImpl<$Res>
    implements _$ListStateCopyWith<$Res> {
  __$ListStateCopyWithImpl(this._self, this._then);

  final _ListState _self;
  final $Res Function(_ListState) _then;

/// Create a copy of ListState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? itemCount = null,Object? constructorType = null,Object? scrollDirection = null,Object? reverse = null,Object? primary = null,Object? physics = freezed,Object? shrinkWrap = null,Object? itemExtent = null,Object? withPrototypeItem = null,Object? addAutomaticKeepAlives = null,Object? addRepaintBoundaries = null,Object? addSemanticIndexes = null,Object? cacheExtent = freezed,Object? semanticChildCount = freezed,Object? dragStartBehavior = null,Object? keyboardDismissBehavior = null,Object? withRestorationId = null,Object? clipBehavior = null,Object? hitTestBehavior = null,}) {
  return _then(_ListState(
itemCount: null == itemCount ? _self.itemCount : itemCount // ignore: cast_nullable_to_non_nullable
as int,constructorType: null == constructorType ? _self.constructorType : constructorType // ignore: cast_nullable_to_non_nullable
as ListViewConstructorType,scrollDirection: null == scrollDirection ? _self.scrollDirection : scrollDirection // ignore: cast_nullable_to_non_nullable
as Axis,reverse: null == reverse ? _self.reverse : reverse // ignore: cast_nullable_to_non_nullable
as bool,primary: null == primary ? _self.primary : primary // ignore: cast_nullable_to_non_nullable
as bool,physics: freezed == physics ? _self.physics : physics // ignore: cast_nullable_to_non_nullable
as ScrollPhysics?,shrinkWrap: null == shrinkWrap ? _self.shrinkWrap : shrinkWrap // ignore: cast_nullable_to_non_nullable
as bool,itemExtent: null == itemExtent ? _self.itemExtent : itemExtent // ignore: cast_nullable_to_non_nullable
as double,withPrototypeItem: null == withPrototypeItem ? _self.withPrototypeItem : withPrototypeItem // ignore: cast_nullable_to_non_nullable
as bool,addAutomaticKeepAlives: null == addAutomaticKeepAlives ? _self.addAutomaticKeepAlives : addAutomaticKeepAlives // ignore: cast_nullable_to_non_nullable
as bool,addRepaintBoundaries: null == addRepaintBoundaries ? _self.addRepaintBoundaries : addRepaintBoundaries // ignore: cast_nullable_to_non_nullable
as bool,addSemanticIndexes: null == addSemanticIndexes ? _self.addSemanticIndexes : addSemanticIndexes // ignore: cast_nullable_to_non_nullable
as bool,cacheExtent: freezed == cacheExtent ? _self.cacheExtent : cacheExtent // ignore: cast_nullable_to_non_nullable
as double?,semanticChildCount: freezed == semanticChildCount ? _self.semanticChildCount : semanticChildCount // ignore: cast_nullable_to_non_nullable
as int?,dragStartBehavior: null == dragStartBehavior ? _self.dragStartBehavior : dragStartBehavior // ignore: cast_nullable_to_non_nullable
as DragStartBehavior,keyboardDismissBehavior: null == keyboardDismissBehavior ? _self.keyboardDismissBehavior : keyboardDismissBehavior // ignore: cast_nullable_to_non_nullable
as ScrollViewKeyboardDismissBehavior,withRestorationId: null == withRestorationId ? _self.withRestorationId : withRestorationId // ignore: cast_nullable_to_non_nullable
as bool,clipBehavior: null == clipBehavior ? _self.clipBehavior : clipBehavior // ignore: cast_nullable_to_non_nullable
as Clip,hitTestBehavior: null == hitTestBehavior ? _self.hitTestBehavior : hitTestBehavior // ignore: cast_nullable_to_non_nullable
as HitTestBehavior,
  ));
}


}

// dart format on
