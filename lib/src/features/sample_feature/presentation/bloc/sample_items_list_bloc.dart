import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/sample_items_repository.dart';
import '../../domain/sample_item.dart';

part 'sample_items_list_bloc.freezed.dart';
part 'sample_items_list_event.dart';
part 'sample_items_list_state.dart';

class SampleItemsListBloc
    extends Bloc<SampleItemsListEvent, SampleItemsListState> {
  final SampleItemsRepository _sampleItemsRepository;
  SampleItemsListBloc(this._sampleItemsRepository) : super(const _Initial()) {
    on<SampleItemsListEvent>((event, emit) async {
      await event.when(
        loadAll: () => _loadAll(emit),
        started: () async => emit(const _Initial()),
      );
    });
  }

  Future<void> _loadAll(Emitter<SampleItemsListState> emit) async {
    emit(const _Loading());
    try {
      //todo: replace with real service
      final items = await _sampleItemsRepository.fetchSampleItems();
      emit(_Loaded(items));
    } catch (e) {
      emit(const _Error());
    }
  }
}
