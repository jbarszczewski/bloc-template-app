import 'package:bloc_template_app/i18n/translations.g.dart';
import 'package:bloc_template_app/src/features/sample_feature/domain/sample_item.dart';
import 'package:bloc_template_app/src/features/sample_feature/presentation/bloc/sample_items_list_bloc.dart';
import 'package:bloc_template_app/src/features/sample_feature/presentation/sample_items_list_screen.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

void main() {
  late MockSampleItemsListBloc mockBloc;
  late MockNavigatorObserver mockObserver;

  setUp(() {
    mockBloc = MockSampleItemsListBloc();
    mockObserver = MockNavigatorObserver();
  });

  Widget createWidgetUnderTest() {
    return TranslationProvider(
      child: MaterialApp(
        home: BlocProvider<SampleItemsListBloc>.value(
          value: mockBloc,
          child: const Scaffold(body: SampleItemsListScreen()),
        ),
        navigatorObservers: [mockObserver],
      ),
    );
  }

  group('SampleItemsListScreen', () {
    testWidgets('renders CircularProgressIndicator when state is initial',
        (WidgetTester tester) async {
      when(() => mockBloc.state)
          .thenReturn(const SampleItemsListState.initial());

      await tester.pumpWidget(createWidgetUnderTest());

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
      verify(() => mockBloc.add(const SampleItemsListEvent.loadAll()))
          .called(1);
    });

    testWidgets('renders CircularProgressIndicator when state is loading',
        (WidgetTester tester) async {
      when(() => mockBloc.state)
          .thenReturn(const SampleItemsListState.loading());

      await tester.pumpWidget(createWidgetUnderTest());

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('renders error message when state is error',
        (WidgetTester tester) async {
      when(() => mockBloc.state).thenReturn(const SampleItemsListState.error());

      await tester.pumpWidget(createWidgetUnderTest());

      expect(find.text('Error'), findsOneWidget);
    });

    testWidgets('renders list of items when state is loaded',
        (WidgetTester tester) async {
      final items = [
        const SampleItem(id: 1, name: 'Item 1', content: 'Content 1'),
        const SampleItem(id: 2, name: 'Item 2', content: 'Content 2'),
      ];
      when(() => mockBloc.state).thenReturn(SampleItemsListState.loaded(items));

      await tester.pumpWidget(createWidgetUnderTest());

      expect(find.byType(ListView), findsOneWidget);
      expect(find.text('Item 1'), findsOneWidget);
      expect(find.text('Item 2'), findsOneWidget);
    });
  });
}

class MockNavigatorObserver extends Mock implements NavigatorObserver {}

// Mock classes
class MockSampleItemsListBloc
    extends MockBloc<SampleItemsListEvent, SampleItemsListState>
    implements SampleItemsListBloc {}
