// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sample_item_viewmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SampleItemViewModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;

  /// Create a copy of SampleItemViewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SampleItemViewModelCopyWith<SampleItemViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SampleItemViewModelCopyWith<$Res> {
  factory $SampleItemViewModelCopyWith(
          SampleItemViewModel value, $Res Function(SampleItemViewModel) then) =
      _$SampleItemViewModelCopyWithImpl<$Res, SampleItemViewModel>;
  @useResult
  $Res call({String id, String name, String? content});
}

/// @nodoc
class _$SampleItemViewModelCopyWithImpl<$Res, $Val extends SampleItemViewModel>
    implements $SampleItemViewModelCopyWith<$Res> {
  _$SampleItemViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SampleItemViewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SampleItemImplCopyWith<$Res>
    implements $SampleItemViewModelCopyWith<$Res> {
  factory _$$SampleItemImplCopyWith(
          _$SampleItemImpl value, $Res Function(_$SampleItemImpl) then) =
      __$$SampleItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String? content});
}

/// @nodoc
class __$$SampleItemImplCopyWithImpl<$Res>
    extends _$SampleItemViewModelCopyWithImpl<$Res, _$SampleItemImpl>
    implements _$$SampleItemImplCopyWith<$Res> {
  __$$SampleItemImplCopyWithImpl(
      _$SampleItemImpl _value, $Res Function(_$SampleItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of SampleItemViewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? content = freezed,
  }) {
    return _then(_$SampleItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SampleItemImpl implements _SampleItem {
  const _$SampleItemImpl({required this.id, required this.name, this.content});

  @override
  final String id;
  @override
  final String name;
  @override
  final String? content;

  @override
  String toString() {
    return 'SampleItemViewModel(id: $id, name: $name, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SampleItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, content);

  /// Create a copy of SampleItemViewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SampleItemImplCopyWith<_$SampleItemImpl> get copyWith =>
      __$$SampleItemImplCopyWithImpl<_$SampleItemImpl>(this, _$identity);
}

abstract class _SampleItem implements SampleItemViewModel {
  const factory _SampleItem(
      {required final String id,
      required final String name,
      final String? content}) = _$SampleItemImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get content;

  /// Create a copy of SampleItemViewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SampleItemImplCopyWith<_$SampleItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
