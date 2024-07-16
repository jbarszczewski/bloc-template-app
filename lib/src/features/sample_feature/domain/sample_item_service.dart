import 'package:bloc_template_app/src/features/sample_feature/domain/sample_item.dart';

class SampleItemsService {
  Stream<List<SampleItem>> getSampleItems() {
    //TODO: This is a placeholder for a real service.
    return Stream.value([
      const SampleItem(id: 1, name: 'Item 1', content: 'This is item 1'),
      const SampleItem(id: 2, name: 'Item 2', content: 'This is item 2'),
      const SampleItem(id: 3, name: 'Item 3', content: 'This is item 3'),
    ]);
  }
}
