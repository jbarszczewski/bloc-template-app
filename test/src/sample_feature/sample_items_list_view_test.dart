import 'package:bloc_template_app/src/sample_feature/sample_items_list_view.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('items list view has title from translations', (tester) async {
    // Add test code here.
    await tester.pumpWidget(const SampleItemsListView(
      items: [],
    ));

    expect(find.text('Items'), findsOneWidget);
  });
}
