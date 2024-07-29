part of 'sample_items_overview_bloc.dart';

@freezed
class SampleItemsOverviewEvent with _$SampleItemsOverviewEvent {
  const factory SampleItemsOverviewEvent.createItem(SampleItemViewModel item) =
      _CreateItem;
  const factory SampleItemsOverviewEvent.deleteItem(String id) = _DeleteItem;
  const factory SampleItemsOverviewEvent.started() = _Started;
  const factory SampleItemsOverviewEvent.subscribe() = _Subscribe;
}
