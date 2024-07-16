part of 'sample_items_list_bloc.dart';

@freezed
class SampleItemsListEvent with _$SampleItemsListEvent {
  const factory SampleItemsListEvent.loadAll() = _LoadAll;
  const factory SampleItemsListEvent.started() = _Started;
}
