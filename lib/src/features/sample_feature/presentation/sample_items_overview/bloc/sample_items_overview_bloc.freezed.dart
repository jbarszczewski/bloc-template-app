// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sample_items_overview_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SampleItemsOverviewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SampleItemViewModel item) createItem,
    required TResult Function(String id) deleteItem,
    required TResult Function() started,
    required TResult Function() subscribe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SampleItemViewModel item)? createItem,
    TResult? Function(String id)? deleteItem,
    TResult? Function()? started,
    TResult? Function()? subscribe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SampleItemViewModel item)? createItem,
    TResult Function(String id)? deleteItem,
    TResult Function()? started,
    TResult Function()? subscribe,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateItem value) createItem,
    required TResult Function(_DeleteItem value) deleteItem,
    required TResult Function(_Started value) started,
    required TResult Function(_Subscribe value) subscribe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateItem value)? createItem,
    TResult? Function(_DeleteItem value)? deleteItem,
    TResult? Function(_Started value)? started,
    TResult? Function(_Subscribe value)? subscribe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateItem value)? createItem,
    TResult Function(_DeleteItem value)? deleteItem,
    TResult Function(_Started value)? started,
    TResult Function(_Subscribe value)? subscribe,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SampleItemsOverviewEventCopyWith<$Res> {
  factory $SampleItemsOverviewEventCopyWith(SampleItemsOverviewEvent value,
          $Res Function(SampleItemsOverviewEvent) then) =
      _$SampleItemsOverviewEventCopyWithImpl<$Res, SampleItemsOverviewEvent>;
}

/// @nodoc
class _$SampleItemsOverviewEventCopyWithImpl<$Res,
        $Val extends SampleItemsOverviewEvent>
    implements $SampleItemsOverviewEventCopyWith<$Res> {
  _$SampleItemsOverviewEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SampleItemsOverviewEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CreateItemImplCopyWith<$Res> {
  factory _$$CreateItemImplCopyWith(
          _$CreateItemImpl value, $Res Function(_$CreateItemImpl) then) =
      __$$CreateItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SampleItemViewModel item});

  $SampleItemViewModelCopyWith<$Res> get item;
}

/// @nodoc
class __$$CreateItemImplCopyWithImpl<$Res>
    extends _$SampleItemsOverviewEventCopyWithImpl<$Res, _$CreateItemImpl>
    implements _$$CreateItemImplCopyWith<$Res> {
  __$$CreateItemImplCopyWithImpl(
      _$CreateItemImpl _value, $Res Function(_$CreateItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of SampleItemsOverviewEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$CreateItemImpl(
      null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as SampleItemViewModel,
    ));
  }

  /// Create a copy of SampleItemsOverviewEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SampleItemViewModelCopyWith<$Res> get item {
    return $SampleItemViewModelCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$CreateItemImpl implements _CreateItem {
  const _$CreateItemImpl(this.item);

  @override
  final SampleItemViewModel item;

  @override
  String toString() {
    return 'SampleItemsOverviewEvent.createItem(item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateItemImpl &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item);

  /// Create a copy of SampleItemsOverviewEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateItemImplCopyWith<_$CreateItemImpl> get copyWith =>
      __$$CreateItemImplCopyWithImpl<_$CreateItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SampleItemViewModel item) createItem,
    required TResult Function(String id) deleteItem,
    required TResult Function() started,
    required TResult Function() subscribe,
  }) {
    return createItem(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SampleItemViewModel item)? createItem,
    TResult? Function(String id)? deleteItem,
    TResult? Function()? started,
    TResult? Function()? subscribe,
  }) {
    return createItem?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SampleItemViewModel item)? createItem,
    TResult Function(String id)? deleteItem,
    TResult Function()? started,
    TResult Function()? subscribe,
    required TResult orElse(),
  }) {
    if (createItem != null) {
      return createItem(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateItem value) createItem,
    required TResult Function(_DeleteItem value) deleteItem,
    required TResult Function(_Started value) started,
    required TResult Function(_Subscribe value) subscribe,
  }) {
    return createItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateItem value)? createItem,
    TResult? Function(_DeleteItem value)? deleteItem,
    TResult? Function(_Started value)? started,
    TResult? Function(_Subscribe value)? subscribe,
  }) {
    return createItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateItem value)? createItem,
    TResult Function(_DeleteItem value)? deleteItem,
    TResult Function(_Started value)? started,
    TResult Function(_Subscribe value)? subscribe,
    required TResult orElse(),
  }) {
    if (createItem != null) {
      return createItem(this);
    }
    return orElse();
  }
}

abstract class _CreateItem implements SampleItemsOverviewEvent {
  const factory _CreateItem(final SampleItemViewModel item) = _$CreateItemImpl;

  SampleItemViewModel get item;

  /// Create a copy of SampleItemsOverviewEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateItemImplCopyWith<_$CreateItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteItemImplCopyWith<$Res> {
  factory _$$DeleteItemImplCopyWith(
          _$DeleteItemImpl value, $Res Function(_$DeleteItemImpl) then) =
      __$$DeleteItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteItemImplCopyWithImpl<$Res>
    extends _$SampleItemsOverviewEventCopyWithImpl<$Res, _$DeleteItemImpl>
    implements _$$DeleteItemImplCopyWith<$Res> {
  __$$DeleteItemImplCopyWithImpl(
      _$DeleteItemImpl _value, $Res Function(_$DeleteItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of SampleItemsOverviewEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteItemImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteItemImpl implements _DeleteItem {
  const _$DeleteItemImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'SampleItemsOverviewEvent.deleteItem(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteItemImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of SampleItemsOverviewEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteItemImplCopyWith<_$DeleteItemImpl> get copyWith =>
      __$$DeleteItemImplCopyWithImpl<_$DeleteItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SampleItemViewModel item) createItem,
    required TResult Function(String id) deleteItem,
    required TResult Function() started,
    required TResult Function() subscribe,
  }) {
    return deleteItem(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SampleItemViewModel item)? createItem,
    TResult? Function(String id)? deleteItem,
    TResult? Function()? started,
    TResult? Function()? subscribe,
  }) {
    return deleteItem?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SampleItemViewModel item)? createItem,
    TResult Function(String id)? deleteItem,
    TResult Function()? started,
    TResult Function()? subscribe,
    required TResult orElse(),
  }) {
    if (deleteItem != null) {
      return deleteItem(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateItem value) createItem,
    required TResult Function(_DeleteItem value) deleteItem,
    required TResult Function(_Started value) started,
    required TResult Function(_Subscribe value) subscribe,
  }) {
    return deleteItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateItem value)? createItem,
    TResult? Function(_DeleteItem value)? deleteItem,
    TResult? Function(_Started value)? started,
    TResult? Function(_Subscribe value)? subscribe,
  }) {
    return deleteItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateItem value)? createItem,
    TResult Function(_DeleteItem value)? deleteItem,
    TResult Function(_Started value)? started,
    TResult Function(_Subscribe value)? subscribe,
    required TResult orElse(),
  }) {
    if (deleteItem != null) {
      return deleteItem(this);
    }
    return orElse();
  }
}

abstract class _DeleteItem implements SampleItemsOverviewEvent {
  const factory _DeleteItem(final String id) = _$DeleteItemImpl;

  String get id;

  /// Create a copy of SampleItemsOverviewEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteItemImplCopyWith<_$DeleteItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$SampleItemsOverviewEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SampleItemsOverviewEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'SampleItemsOverviewEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SampleItemViewModel item) createItem,
    required TResult Function(String id) deleteItem,
    required TResult Function() started,
    required TResult Function() subscribe,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SampleItemViewModel item)? createItem,
    TResult? Function(String id)? deleteItem,
    TResult? Function()? started,
    TResult? Function()? subscribe,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SampleItemViewModel item)? createItem,
    TResult Function(String id)? deleteItem,
    TResult Function()? started,
    TResult Function()? subscribe,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateItem value) createItem,
    required TResult Function(_DeleteItem value) deleteItem,
    required TResult Function(_Started value) started,
    required TResult Function(_Subscribe value) subscribe,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateItem value)? createItem,
    TResult? Function(_DeleteItem value)? deleteItem,
    TResult? Function(_Started value)? started,
    TResult? Function(_Subscribe value)? subscribe,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateItem value)? createItem,
    TResult Function(_DeleteItem value)? deleteItem,
    TResult Function(_Started value)? started,
    TResult Function(_Subscribe value)? subscribe,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SampleItemsOverviewEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SubscribeImplCopyWith<$Res> {
  factory _$$SubscribeImplCopyWith(
          _$SubscribeImpl value, $Res Function(_$SubscribeImpl) then) =
      __$$SubscribeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubscribeImplCopyWithImpl<$Res>
    extends _$SampleItemsOverviewEventCopyWithImpl<$Res, _$SubscribeImpl>
    implements _$$SubscribeImplCopyWith<$Res> {
  __$$SubscribeImplCopyWithImpl(
      _$SubscribeImpl _value, $Res Function(_$SubscribeImpl) _then)
      : super(_value, _then);

  /// Create a copy of SampleItemsOverviewEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SubscribeImpl implements _Subscribe {
  const _$SubscribeImpl();

  @override
  String toString() {
    return 'SampleItemsOverviewEvent.subscribe()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubscribeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SampleItemViewModel item) createItem,
    required TResult Function(String id) deleteItem,
    required TResult Function() started,
    required TResult Function() subscribe,
  }) {
    return subscribe();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SampleItemViewModel item)? createItem,
    TResult? Function(String id)? deleteItem,
    TResult? Function()? started,
    TResult? Function()? subscribe,
  }) {
    return subscribe?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SampleItemViewModel item)? createItem,
    TResult Function(String id)? deleteItem,
    TResult Function()? started,
    TResult Function()? subscribe,
    required TResult orElse(),
  }) {
    if (subscribe != null) {
      return subscribe();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateItem value) createItem,
    required TResult Function(_DeleteItem value) deleteItem,
    required TResult Function(_Started value) started,
    required TResult Function(_Subscribe value) subscribe,
  }) {
    return subscribe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateItem value)? createItem,
    TResult? Function(_DeleteItem value)? deleteItem,
    TResult? Function(_Started value)? started,
    TResult? Function(_Subscribe value)? subscribe,
  }) {
    return subscribe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateItem value)? createItem,
    TResult Function(_DeleteItem value)? deleteItem,
    TResult Function(_Started value)? started,
    TResult Function(_Subscribe value)? subscribe,
    required TResult orElse(),
  }) {
    if (subscribe != null) {
      return subscribe(this);
    }
    return orElse();
  }
}

abstract class _Subscribe implements SampleItemsOverviewEvent {
  const factory _Subscribe() = _$SubscribeImpl;
}

/// @nodoc
mixin _$SampleItemsOverviewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<SampleItemViewModel> items) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<SampleItemViewModel> items)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SampleItemViewModel> items)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Error value)? error,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SampleItemsOverviewStateCopyWith<$Res> {
  factory $SampleItemsOverviewStateCopyWith(SampleItemsOverviewState value,
          $Res Function(SampleItemsOverviewState) then) =
      _$SampleItemsOverviewStateCopyWithImpl<$Res, SampleItemsOverviewState>;
}

/// @nodoc
class _$SampleItemsOverviewStateCopyWithImpl<$Res,
        $Val extends SampleItemsOverviewState>
    implements $SampleItemsOverviewStateCopyWith<$Res> {
  _$SampleItemsOverviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SampleItemsOverviewState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$SampleItemsOverviewStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of SampleItemsOverviewState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl();

  @override
  String toString() {
    return 'SampleItemsOverviewState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<SampleItemViewModel> items) success,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<SampleItemViewModel> items)? success,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SampleItemViewModel> items)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Error value)? error,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements SampleItemsOverviewState {
  const factory _Error() = _$ErrorImpl;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SampleItemsOverviewStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SampleItemsOverviewState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SampleItemsOverviewState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<SampleItemViewModel> items) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<SampleItemViewModel> items)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SampleItemViewModel> items)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Error value)? error,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SampleItemsOverviewState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$SampleItemsOverviewStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SampleItemsOverviewState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'SampleItemsOverviewState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<SampleItemViewModel> items) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<SampleItemViewModel> items)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SampleItemViewModel> items)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Error value)? error,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SampleItemsOverviewState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SampleItemViewModel> items});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$SampleItemsOverviewStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of SampleItemsOverviewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$SuccessImpl(
      null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SampleItemViewModel>,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(final List<SampleItemViewModel> items) : _items = items;

  final List<SampleItemViewModel> _items;
  @override
  List<SampleItemViewModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'SampleItemsOverviewState.success(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  /// Create a copy of SampleItemsOverviewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<SampleItemViewModel> items) success,
  }) {
    return success(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<SampleItemViewModel> items)? success,
  }) {
    return success?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SampleItemViewModel> items)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Error value)? error,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements SampleItemsOverviewState {
  const factory _Success(final List<SampleItemViewModel> items) = _$SuccessImpl;

  List<SampleItemViewModel> get items;

  /// Create a copy of SampleItemsOverviewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
