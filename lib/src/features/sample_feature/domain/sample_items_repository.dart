import 'package:bloc_template_app/src/features/sample_feature/data/sample_items_local_datasource.dart';

import 'models/sample_item_viewmodel.dart';

class SampleItemsRepository {
  final SampleItemsLocalDataSource _localDataSource;

  SampleItemsRepository({required SampleItemsLocalDataSource localDataSource})
      : _localDataSource = localDataSource;

  Future<void> addSampleItem(SampleItemViewModel item) async {
    await _localDataSource.addSampleItem(item.id, item.name, item.content);
  }

  Future<void> deleteSampleItem(String id) async {
    await _localDataSource.deleteSampleItem(id);
  }

  Future<SampleItemViewModel> getSampleItemById(String id) async {
    final item = await _localDataSource.getSampleItemById(id);
    if (item == null) {
      throw Exception('Item not found');
    }
    
    return SampleItemViewModel(
      id: item.id,
      name: item.name,
      content: item.content,
    );
  }

  Stream<List<SampleItemViewModel>> watchSampleItems() {
    return _localDataSource.watchAllSampleItems().map((items) {
      return items
          .map((item) => SampleItemViewModel(
                id: item.id,
                name: item.name,
                content: item.content,
              ))
          .toList();
    });
  }
}
