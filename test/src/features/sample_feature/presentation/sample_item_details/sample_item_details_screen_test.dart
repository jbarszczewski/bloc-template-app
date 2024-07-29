import 'package:bloc_template_app/i18n/translations.g.dart';
import 'package:bloc_template_app/src/features/sample_feature/domain/models/sample_item_viewmodel.dart';
import 'package:bloc_template_app/src/features/sample_feature/presentation/sample_item_details/cubit/sample_item_details_cubit.dart';
import 'package:bloc_template_app/src/features/sample_feature/presentation/sample_item_details/sample_item_details_screen.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

void main() {
  group('SampleItemDetailsScreen', () {
    late SampleItemDetailsCubit sampleItemDetailsCubit;

    setUp(() {
      sampleItemDetailsCubit = MockSampleItemDetailsCubit();
    });

    Widget createWidgetUnderTest() {
      return TranslationProvider(
        child: MaterialApp(
          home: BlocProvider<SampleItemDetailsCubit>.value(
            value: sampleItemDetailsCubit,
            child:
                const Scaffold(body: SampleItemDetailsScreen(id: 'sampleId')),
          ),
        ),
      );
    }

    testWidgets('renders CircularProgressIndicator when initial state',
        (WidgetTester tester) async {
      when(() => sampleItemDetailsCubit.state)
          .thenReturn(const SampleItemDetailsState.initial());
      when(() => sampleItemDetailsCubit.getItemById("sampleId"))
          .thenAnswer((_) async {});

      await tester.pumpWidget(createWidgetUnderTest());

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('renders CircularProgressIndicator when loading state',
        (WidgetTester tester) async {
      when(() => sampleItemDetailsCubit.state)
          .thenReturn(const SampleItemDetailsState.loading());

      await tester.pumpWidget(createWidgetUnderTest());

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('renders item details when success state',
        (WidgetTester tester) async {
      const sampleItem = SampleItemViewModel(
          id: 'sampleId', name: 'Sample Name', content: 'Sample Content');
      when(() => sampleItemDetailsCubit.state)
          .thenReturn(const SampleItemDetailsState.success(sampleItem));

      await tester.pumpWidget(createWidgetUnderTest());

      expect(find.text('ID: ${sampleItem.id}'), findsOneWidget);
      expect(find.text('Name: ${sampleItem.name}'), findsOneWidget);
      expect(
          find.text('Optional content: ${sampleItem.content}'), findsOneWidget);
      expect(find.byType(ElevatedButton), findsOneWidget);
    });

    testWidgets('calls deleteItem when delete button is pressed',
        (WidgetTester tester) async {
      when(() => sampleItemDetailsCubit.state).thenReturn(
          const SampleItemDetailsState.success(
              SampleItemViewModel(id: 'sampleId', name: 'Sample Name')));
      when(() => sampleItemDetailsCubit.deleteItem("sampleId"))
          .thenAnswer((_) async {});
          
      await tester.pumpWidget(createWidgetUnderTest());

      await tester.tap(find.byType(ElevatedButton));

      verify(() => sampleItemDetailsCubit.deleteItem('sampleId')).called(1);
    });
  });
}

class MockSampleItemDetailsCubit extends MockCubit<SampleItemDetailsState>
    implements SampleItemDetailsCubit {}
