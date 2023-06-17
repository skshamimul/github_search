import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';

import '../app/extensions.dart';
import '../app/github_app.dart';
import '../model/owner.dart';
import '../model/repository.dart';

class ApiService {
  final GithubApp _api;

  ApiService(this._api);

  Future<List<Repositoriey>> fatchAlldata(
      {String query = 'Flutter',
      String? sort,
      String order = 'desc',
      int perPage = 10,
      int page = 1}) async {
    final Map<String, dynamic> _sort = sort != null ? {'sort': sort} : {};

    final List<Repositoriey> response = await _api.getGithubRepo(
        queryParameters: {
          'q': query,
          'order': order,
          'per_page': perPage,
          'page': page,
          ..._sort
        });

    return response;
  }

  Stream<List<Repositoriey>> watchRepositoriey(
      {required Map<String, dynamic> condition}) {
    final _watchRepositoriey = _api.watchRepositoriey();

    return _watchRepositoriey;
  }

  Future<int> repositoryItemCount() async {
    final int result = await _api.repoItemCount();

    return result;
  }
}
