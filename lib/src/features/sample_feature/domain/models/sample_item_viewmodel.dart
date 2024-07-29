import 'package:freezed_annotation/freezed_annotation.dart';

part 'sample_item_viewmodel.freezed.dart';

@freezed
class SampleItemViewModel with _$SampleItemViewModel {
  const factory SampleItemViewModel(
      {required String id,
      required String name,
      String? content}) = _SampleItem;
}
