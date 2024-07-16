import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/sample_item.dart';

part 'sample_items_list_bloc.freezed.dart';
part 'sample_items_list_event.dart';
part 'sample_items_list_state.dart';

class SampleItemsListBloc
    extends Bloc<SampleItemsListEvent, SampleItemsListState> {
  SampleItemsListBloc() : super(const _Initial()) {
    on<SampleItemsListEvent>((event, emit) async {
      await event.when(
        loadAll: () => _loadAll(emit),
        started: () async => emit(const _Initial()),
      );
    });
  }

  Future<List<SampleItem>> _getDummyItems() async {
    var items = await Future.delayed(
        const Duration(seconds: 1),
        () => [
              const SampleItem(
                  id: 1, name: 'Item 1', content: 'This is item 1'),
              const SampleItem(id: 2, name: 'Item 2'),
              const SampleItem(
                  id: 3, name: 'Item 3', content: 'This is item 3'),
            ]);
    return items;
  }

  Future<void> _loadAll(Emitter<SampleItemsListState> emit) async {
    emit(const _Loading());
    try {
      //todo: replace with real service
      final items = await _getDummyItems();
      emit(_Loaded(items));
    } catch (e) {
      emit(const _Error());
    }
  }
}
