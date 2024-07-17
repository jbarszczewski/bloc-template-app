import '../domain/sample_item.dart';

class SampleItemsRepository {
  Future<List<SampleItem>> fetchSampleItems() async {
    await Future.delayed(const Duration(seconds: 1));
    return [
      const SampleItem(id: 1, name: 'Item 1', content: 'This is item 1'),
      const SampleItem(id: 2, name: 'Item 2', content: 'This is item 2'),
      const SampleItem(id: 4, name: 'Item 4', content: 'This is item 4'),
    ];
  }
}
