// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sample_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SampleItem {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SampleItemCopyWith<SampleItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SampleItemCopyWith<$Res> {
  factory $SampleItemCopyWith(
          SampleItem value, $Res Function(SampleItem) then) =
      _$SampleItemCopyWithImpl<$Res, SampleItem>;
  @useResult
  $Res call({int id, String name, String? content});
}

/// @nodoc
class _$SampleItemCopyWithImpl<$Res, $Val extends SampleItem>
    implements $SampleItemCopyWith<$Res> {
  _$SampleItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
              as int,
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
    implements $SampleItemCopyWith<$Res> {
  factory _$$SampleItemImplCopyWith(
          _$SampleItemImpl value, $Res Function(_$SampleItemImpl) then) =
      __$$SampleItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String? content});
}

/// @nodoc
class __$$SampleItemImplCopyWithImpl<$Res>
    extends _$SampleItemCopyWithImpl<$Res, _$SampleItemImpl>
    implements _$$SampleItemImplCopyWith<$Res> {
  __$$SampleItemImplCopyWithImpl(
      _$SampleItemImpl _value, $Res Function(_$SampleItemImpl) _then)
      : super(_value, _then);

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
              as int,
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
  final int id;
  @override
  final String name;
  @override
  final String? content;

  @override
  String toString() {
    return 'SampleItem(id: $id, name: $name, content: $content)';
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SampleItemImplCopyWith<_$SampleItemImpl> get copyWith =>
      __$$SampleItemImplCopyWithImpl<_$SampleItemImpl>(this, _$identity);
}

abstract class _SampleItem implements SampleItem {
  const factory _SampleItem(
      {required final int id,
      required final String name,
      final String? content}) = _$SampleItemImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get content;
  @override
  @JsonKey(ignore: true)
  _$$SampleItemImplCopyWith<_$SampleItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}