part of 'sample_item_details_cubit.dart';

@freezed
class SampleItemDetailsState with _$SampleItemDetailsState {
  const factory SampleItemDetailsState.error() = _Error;
  const factory SampleItemDetailsState.initial() = _Initial;
  const factory SampleItemDetailsState.loading() = _Loading;
  const factory SampleItemDetailsState.success(SampleItemViewModel item) =
      _Success;
}
