part of 'sample_items_list_bloc.dart';

@freezed
class SampleItemsListState with _$SampleItemsListState {
  const factory SampleItemsListState.error() = _Error;
  const factory SampleItemsListState.initial() = _Initial;
  const factory SampleItemsListState.loaded(List<SampleItem> items) = _Loaded;
  const factory SampleItemsListState.loading() = _Loading;
}
