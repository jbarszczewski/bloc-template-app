import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

import '../../../domain/models/sample_item_viewmodel.dart';
import '../../../domain/sample_items_repository.dart';

part 'sample_items_overview_bloc.freezed.dart';
part 'sample_items_overview_event.dart';
part 'sample_items_overview_state.dart';

class SampleItemsOverviewBloc
    extends Bloc<SampleItemsOverviewEvent, SampleItemsOverviewState> {
  final SampleItemsRepository _sampleItemsRepository;
  SampleItemsOverviewBloc(this._sampleItemsRepository)
      : super(const _Initial()) {
    on<SampleItemsOverviewEvent>((event, emit) async {
      await event.when(
          started: () async => emit(const _Initial()),
          createItem: (SampleItemViewModel item) => _createItem(item, emit),
          deleteItem: (String id) => _deleteItem(id, emit),
          subscribe: () => _subscribe(emit));
    });
  }

  Future<void> _createItem(
      SampleItemViewModel item, Emitter<SampleItemsOverviewState> emit) async {
    emit(const _Loading());
    try {
      await _sampleItemsRepository
          .addSampleItem(item.copyWith(id: const Uuid().v4()));
    } catch (e) {
      emit(const _Error());
    }
  }

  Future<void> _deleteItem(
      String id, Emitter<SampleItemsOverviewState> emit) async {
    emit(const _Loading());
    try {
      await _sampleItemsRepository.deleteSampleItem(id);
    } catch (e) {
      emit(const _Error());
    }
  }

  Future<void> _subscribe(Emitter<SampleItemsOverviewState> emit) async {
    emit(const _Loading());
    await emit.forEach(_sampleItemsRepository.watchSampleItems(),
        onData: (items) => _Success(items), onError: (_, __) => const _Error());
  }
}
