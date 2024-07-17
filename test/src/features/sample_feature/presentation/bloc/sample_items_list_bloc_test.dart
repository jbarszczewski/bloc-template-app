import 'package:bloc_template_app/src/features/sample_feature/data/sample_items_repository.dart';
import 'package:bloc_template_app/src/features/sample_feature/domain/sample_item.dart';
import 'package:bloc_template_app/src/features/sample_feature/presentation/bloc/sample_items_list_bloc.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

void main() {
  late SampleItemsListBloc bloc;
  late MockSampleItemsRepository mockItemsRepository;

  setUp(() {
    mockItemsRepository = MockSampleItemsRepository();
    bloc = SampleItemsListBloc(mockItemsRepository);
  });

  tearDown(() {
    bloc.close();
  });

  group('SampleItemsListBloc', () {
    final sampleItems = [
      const SampleItem(id: 1, name: 'Item 1', content: 'This is item 1'),
      const SampleItem(id: 2, name: 'Item 2'),
      const SampleItem(id: 3, name: 'Item 3', content: 'This is item 3'),
    ];

    test('initial state is Initial', () {
      expect(bloc.state, const SampleItemsListState.initial());
    });

    blocTest<SampleItemsListBloc, SampleItemsListState>(
      'emits [Loading, Loaded] when LoadAll event is added successfully',
      build: () {
        when(() => mockItemsRepository.fetchSampleItems())
            .thenAnswer((_) async => sampleItems);
        return bloc;
      },
      act: (bloc) => bloc.add(const SampleItemsListEvent.loadAll()),
      expect: () => [
        const SampleItemsListState.loading(),
        SampleItemsListState.loaded(sampleItems),
      ],
    );

    blocTest<SampleItemsListBloc, SampleItemsListState>(
      'emits [Loading, Error] when LoadAll event is added and an error occurs',
      build: () {
        when(() => mockItemsRepository.fetchSampleItems())
            .thenThrow(Exception('Failed to load items'));
        return bloc;
      },
      act: (bloc) => bloc.add(const SampleItemsListEvent.loadAll()),
      expect: () => [
        const SampleItemsListState.loading(),
        const SampleItemsListState.error(),
      ],
    );
  });
}

class MockSampleItemsRepository extends Mock implements SampleItemsRepository {}
