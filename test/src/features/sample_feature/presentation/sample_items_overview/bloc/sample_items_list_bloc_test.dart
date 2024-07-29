import 'package:bloc_template_app/src/features/sample_feature/domain/models/sample_item_viewmodel.dart';
import 'package:bloc_template_app/src/features/sample_feature/domain/sample_items_repository.dart';
import 'package:bloc_template_app/src/features/sample_feature/presentation/sample_items_overview/bloc/sample_items_overview_bloc.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

void main() {
  late SampleItemsOverviewBloc bloc;
  late MockSampleItemsRepository mockItemsRepository;

  setUp(() {
    mockItemsRepository = MockSampleItemsRepository();
    bloc = SampleItemsOverviewBloc(mockItemsRepository);
  });

  tearDown(() {
    bloc.close();
  });

  group('SampleItemsListBloc', () {
    final sampleItems = [
      const SampleItemViewModel(
          id: '1', name: 'Item 1', content: 'This is item 1'),
      const SampleItemViewModel(id: '2', name: 'Item 2'),
      const SampleItemViewModel(
          id: '3', name: 'Item 3', content: 'This is item 3'),
    ];

    test('initial state is Initial', () {
      expect(bloc.state, const SampleItemsOverviewState.initial());
    });

    blocTest<SampleItemsOverviewBloc, SampleItemsOverviewState>(
      'emits [Loading, Loaded] when Subscribe event is added successfully',
      build: () {
        when(() => mockItemsRepository.watchSampleItems())
            .thenAnswer((_) => Stream.value(sampleItems));
        return bloc;
      },
      act: (bloc) => bloc.add(const SampleItemsOverviewEvent.subscribe()),
      expect: () => [
        const SampleItemsOverviewState.loading(),
        SampleItemsOverviewState.success(sampleItems),
      ],
    );

    blocTest<SampleItemsOverviewBloc, SampleItemsOverviewState>(
      'emits [Loading, Error] when Subscribe event is added and an error occurs',
      build: () {
        when(() => mockItemsRepository.watchSampleItems())
            .thenAnswer((_) => Stream.error(Exception('Error')));
        return bloc;
      },
      act: (bloc) => bloc.add(const SampleItemsOverviewEvent.subscribe()),
      expect: () => [
        const SampleItemsOverviewState.loading(),
        const SampleItemsOverviewState.error(),
      ],
    );
  });
}

class MockSampleItemsRepository extends Mock implements SampleItemsRepository {}
