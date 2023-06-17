import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../model/repository.dart';
import '../../../../provider.dart';
import '../../../../service/api_service.dart';
import '../../../widget/pagination/pagination_notifier.dart';
import '../../../widget/pagination/pagination_state/pagination_state.dart';

final homeScreenProvider = StateNotifierProvider<
    HomeScreenController<Repositoriey>, PaginationState<Repositoriey>>((ref) {
  final apiService = ref.watch(apiServiceProvider);

  return HomeScreenController(
      itemsPerBatch: 10,
      apiService: apiService,
      fetchNextItems: (mapData) async {
        
        final List<Repositoriey> dataList =
            await apiService.fatchAlldata(page: mapData['page'] as int);
        return dataList;
      })
    ..init();
});

class HomeScreenController<T> extends PaginationNotifier<T> {
  final ApiService apiService;

  HomeScreenController(
      {required this.apiService,
      required int itemsPerBatch,
      required Future<List<T>> Function(Map<String, dynamic> p1)
          fetchNextItems})
      : super(
          itemsPerBatch: itemsPerBatch,
          fetchNextItems: fetchNextItems,
        );

  Map<String, dynamic> _getParameterData() => {
        // 'title': {'value': _title, 'condition': QueryType.contains},
      };

  Future<void> init() async {
    setQuery(_getParameterData());
    final int itemCount = await apiService.repositoryItemCount();
    int page = (itemCount / 10).round();
    setSkip(page);
    clearData();

    await fetchFirstBatch();
  }

  Stream<List<dynamic>> loadSteam() {
    return apiService.watchRepositoriey(condition: {});
  }

  Future<void> setReset() async {
    setSearching(false);
    setSkip(1);
    clearData();
  

    await fetchFirstBatch();
  }
}
