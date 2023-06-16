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
    final Response response = await _api.rest.get(
      '/search/repositories',
      queryParameters: {
        'q': query,
        'order': order,
        'per_page': perPage,
        'page': page,
        ..._sort
      },
    );
    final Map<String, dynamic> mapdata = response.data as Map<String, dynamic>;
    final List<Repositoriey> listRepositoriey = (mapdata['items'] as List<dynamic>)
        .map((e) => Repositoriey.fromJson(e as Map<String, dynamic>))
        .toList();
    final List<Owner> listOwner =   listRepositoriey.map((e) => e.ownerModel!).toList();  


    return listRepositoriey;
  }
}
