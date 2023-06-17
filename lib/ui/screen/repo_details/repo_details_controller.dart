import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_search/app/extensions.dart';

import '../../../model/repository.dart';
import '../../../provider.dart';
import '../../../service/api_service.dart';
import 'state/repo_details_state.dart';

final repoDetailsProvider =
    StateNotifierProvider<RepoDetailsNotifier, RepoDetailsState>((ref) {
  final apiService = ref.watch(apiServiceProvider);

  return RepoDetailsNotifier(apiService: apiService, ref: ref)..init();
});

class RepoDetailsNotifier extends StateNotifier<RepoDetailsState> {
  final ApiService apiService;
  final StateNotifierProviderRef ref;
  RepoDetailsNotifier({required this.ref, required this.apiService})
      : super(const RepoDetailsState.initilize());

  Future<void> init() async {
    state = const RepoDetailsState.loading();
    final isarId = ref.watch(isarIdProvider);
    '______________Start_____'.log;
    '$isarId'.log;
    '______________End_____'.log;
    Repositoriey? repositoriey = await apiService.fatchReposirtyFromId(isarId);
    if (repositoriey != null) {
      state = RepoDetailsState.data(repositoriey);
    } else {
      state = RepoDetailsState.error("Error");
    }
  }
}
