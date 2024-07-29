import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/models/sample_item_viewmodel.dart';
import '../../../domain/sample_items_repository.dart';

part 'sample_item_details_cubit.freezed.dart';
part 'sample_item_details_state.dart';

class SampleItemDetailsCubit extends Cubit<SampleItemDetailsState> {
  final SampleItemsRepository _sampleItemsRepository;

  SampleItemDetailsCubit(this._sampleItemsRepository)
      : super(const SampleItemDetailsState.initial());

  Future<void> deleteItem(String id) async {
    emit(const SampleItemDetailsState.loading());
    try {
      await _sampleItemsRepository.deleteSampleItem(id);
      emit(const SampleItemDetailsState.initial());
    } catch (e) {
      emit(const SampleItemDetailsState.error());
    }
  }

  Future<void> getItemById(String id) async {
    emit(const SampleItemDetailsState.loading());
    try {
      final item = await _sampleItemsRepository.getSampleItemById(id);
      emit(SampleItemDetailsState.success(item));
    } catch (e) {
      emit(const SampleItemDetailsState.error());
    }
  }
}
