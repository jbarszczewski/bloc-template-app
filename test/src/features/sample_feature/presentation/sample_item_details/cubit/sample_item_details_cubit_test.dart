import 'package:bloc_template_app/src/features/sample_feature/domain/models/sample_item_viewmodel.dart';
import 'package:bloc_template_app/src/features/sample_feature/domain/sample_items_repository.dart';
import 'package:bloc_template_app/src/features/sample_feature/presentation/sample_item_details/cubit/sample_item_details_cubit.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

void main() {
  group('SampleItemDetailsCubit', () {
    late SampleItemsRepository sampleItemsRepository;
    late SampleItemDetailsCubit cubit;

    setUp(() {
      sampleItemsRepository = MockSampleItemsRepository();
      cubit = SampleItemDetailsCubit(sampleItemsRepository);
    });

    tearDown(() {
      cubit.close();
    });

    test('initial state is SampleItemDetailsState.initial', () {
      expect(cubit.state, equals(const SampleItemDetailsState.initial()));
    });

    blocTest<SampleItemDetailsCubit, SampleItemDetailsState>(
      'emits [loading, success] when getItemById is called successfully',
      build: () {
        when(() => sampleItemsRepository.getSampleItemById('1')).thenAnswer(
            (_) async =>
                const SampleItemViewModel(id: '1', name: 'Sample Item'));
        return cubit;
      },
      act: (cubit) => cubit.getItemById('1'),
      expect: () => [
        const SampleItemDetailsState.loading(),
        const SampleItemDetailsState.success(
            SampleItemViewModel(id: '1', name: 'Sample Item')),
      ],
    );

    blocTest<SampleItemDetailsCubit, SampleItemDetailsState>(
      'emits [loading, error] when getItemById throws an exception',
      build: () {
        when(() => sampleItemsRepository.getSampleItemById('1'))
            .thenThrow(Exception());
        return cubit;
      },
      act: (cubit) => cubit.getItemById('1'),
      expect: () => [
        const SampleItemDetailsState.loading(),
        const SampleItemDetailsState.error(),
      ],
    );

    blocTest<SampleItemDetailsCubit, SampleItemDetailsState>(
      'emits [loading, initial] when deleteItem is called successfully',
      build: () {
        when(() => sampleItemsRepository.deleteSampleItem('1'))
            .thenAnswer((_) async {});
        return cubit;
      },
      act: (cubit) => cubit.deleteItem('1'),
      expect: () => [
        const SampleItemDetailsState.loading(),
        const SampleItemDetailsState.initial(),
      ],
    );

    blocTest<SampleItemDetailsCubit, SampleItemDetailsState>(
      'emits [loading, error] when deleteItem throws an exception',
      build: () {
        when(() => sampleItemsRepository.deleteSampleItem('1'))
            .thenThrow(Exception());
        return cubit;
      },
      act: (cubit) => cubit.deleteItem('1'),
      expect: () => [
        const SampleItemDetailsState.loading(),
        const SampleItemDetailsState.error(),
      ],
    );
  });
}

class MockSampleItemsRepository extends Mock implements SampleItemsRepository {}
