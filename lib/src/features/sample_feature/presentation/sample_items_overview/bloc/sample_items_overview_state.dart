part of 'sample_items_overview_bloc.dart';

@freezed
class SampleItemsOverviewState with _$SampleItemsOverviewState {
  const factory SampleItemsOverviewState.error() = _Error;
  const factory SampleItemsOverviewState.initial() = _Initial;
  const factory SampleItemsOverviewState.loading() = _Loading;
  const factory SampleItemsOverviewState.success(
      List<SampleItemViewModel> items) = _Success;
}
