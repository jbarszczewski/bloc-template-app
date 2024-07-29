import 'package:bloc_template_app/i18n/translations.g.dart';
import 'package:bloc_template_app/src/features/sample_feature/domain/models/sample_item_viewmodel.dart';
import 'package:bloc_template_app/src/features/sample_feature/presentation/sample_items_overview/bloc/sample_items_overview_bloc.dart';
import 'package:bloc_template_app/src/features/sample_feature/presentation/sample_items_overview/sample_items_overview_screen.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

void main() {
  late MockSampleItemsOverviewBloc mockBloc;
  late MockNavigatorObserver mockObserver;

  setUp(() {
    mockBloc = MockSampleItemsOverviewBloc();
    mockObserver = MockNavigatorObserver();
  });

  Widget createWidgetUnderTest() {
    return TranslationProvider(
      child: MaterialApp(
        home: BlocProvider<SampleItemsOverviewBloc>.value(
          value: mockBloc,
          child: const Scaffold(body: SampleItemsOverviewScreen()),
        ),
        navigatorObservers: [mockObserver],
      ),
    );
  }

  group('SampleItemsOverviewScreen', () {
    testWidgets('renders CircularProgressIndicator when state is initial',
        (WidgetTester tester) async {
      when(() => mockBloc.state)
          .thenReturn(const SampleItemsOverviewState.initial());

      await tester.pumpWidget(createWidgetUnderTest());

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
      verify(() => mockBloc.add(const SampleItemsOverviewEvent.subscribe()))
          .called(1);
    });

    testWidgets('renders CircularProgressIndicator when state is loading',
        (WidgetTester tester) async {
      when(() => mockBloc.state)
          .thenReturn(const SampleItemsOverviewState.loading());

      await tester.pumpWidget(createWidgetUnderTest());

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('renders error message when state is error',
        (WidgetTester tester) async {
      when(() => mockBloc.state)
          .thenReturn(const SampleItemsOverviewState.error());

      await tester.pumpWidget(createWidgetUnderTest());

      expect(find.text('Error'), findsOneWidget);
    });

    testWidgets('renders list of items when state is loaded',
        (WidgetTester tester) async {
      final items = [
        const SampleItemViewModel(
            id: '1', name: 'Item 1', content: 'Content 1'),
        const SampleItemViewModel(
            id: '2', name: 'Item 2', content: 'Content 2'),
      ];
      when(() => mockBloc.state)
          .thenReturn(SampleItemsOverviewState.success(items));

      await tester.pumpWidget(createWidgetUnderTest());

      expect(find.byType(ListView), findsOneWidget);
      expect(find.text('Item 1'), findsOneWidget);
      expect(find.text('Item 2'), findsOneWidget);
    });
  });
}

class MockNavigatorObserver extends Mock implements NavigatorObserver {}

// Mock classes
class MockSampleItemsOverviewBloc
    extends MockBloc<SampleItemsOverviewEvent, SampleItemsOverviewState>
    implements SampleItemsOverviewBloc {}
