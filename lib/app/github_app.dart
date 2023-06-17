import 'package:dio/dio.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../core/constants/app_const.dart';
import '../model/owner.dart';
import '../model/repository.dart';
import 'build_info.dart';
import 'github_app_rest.dart';

class GithubApp {
  late GithubAppRest _rest;
  late Map<String, String>? headers = {};
  bool _initialized = false;
  late final Isar _isar;

  static GithubApp get instance {
    assert(
      _instance._initialized,
      'You must initialize the GithubApp instance before calling GithubApp.instance',
    );
    return _instance;
  }

  GithubApp();

  Future<GithubApp> initialize({
    String? appKey,
    String? apiRestUrl,
    String? apiSocketUrl,
    String? apiAccessToken,
    int? receiveTimeout,
    int? connectTimeout,
    int? sendTimeout,
    bool? debug,
  }) async {
    assert(
      !_instance._initialized,
      'This instance is already initialized',
    );

    //schemas = List.from(appBaseCampSchemas);

    appKey ??= AppConst.appKey;
    apiRestUrl ??= AppConst.apiRestUrl;
    apiSocketUrl ??= AppConst.apiSocketUrl;
    apiAccessToken ??= AppConst.apiAccessToken;
    receiveTimeout ??= AppConst.receiveTimeout;
    connectTimeout ??= AppConst.connectTimeout;
    sendTimeout ??= AppConst.sendTimeout;

    await BuildInfo.init();

    final dir = await getApplicationDocumentsDirectory();
    _instance._isar = await Isar.open(
      [RepositorieySchema, OwnerSchema],
      directory: dir.path,
    );

    headers = await _getHeaders();

    _instance._initRest(apiRestUrl, headers!, receiveTimeout, connectTimeout,
        sendTimeout, debug);

    _instance._initialized = true;
    return _instance;
  }

  GithubAppRest get rest => _instance._rest;

  GithubApp._();
  static final GithubApp _instance = GithubApp._();

  void _initRest(String apiRestUrl, Map<String, String> headers,
      int receiveTimeout, int connectTimeout, int sendTimeout, bool? debug) {
    _instance._rest = GithubAppRest(
      apiUrl: apiRestUrl,
      receiveTimeout: receiveTimeout,
      connectTimeout: connectTimeout,
      sendTimeout: sendTimeout,
      params: {},
      headers: headers,
      debug: debug,
    );
  }

  Future<Map<String, String>> _getHeaders() async {
    final headers = {...AppConst.defaultHeaders};

    headers['Accept'] = 'application/vnd.github+json';
    headers['X-GitHub-Api-Version'] = '2022-11-28';
    headers['userAgent'] =
        'githubapp/${BuildInfo.version} ${BuildInfo.platform}/${BuildInfo.platformVersion} (${BuildInfo.deviceModel})';
    return headers;
  }

  Future<List<Repositoriey>> getGithubRepo(
      {required Map<String, dynamic> queryParameters}) async {
    final Response response = await _instance._rest.get(
      '/search/repositories',
      queryParameters: queryParameters,
    );
    final Map<String, dynamic> mapdata = response.data as Map<String, dynamic>;
    final List<dynamic> listItem = mapdata['items'] as List<dynamic>;
    final List<Repositoriey> listRepositoriey = [];
    final List<Owner> listOwner = [];
    for (var element in listItem) {
      final Repositoriey repo =
          Repositoriey.fromJson(element as Map<String, dynamic>);
      listRepositoriey.add(repo);
      listOwner.add(repo.ownerModel!);
      final int? isarId = await getIsarId(repo.id);
      if (isarId == null) {
        final Repositoriey newRepo = repo..owner.value = repo.ownerModel;
        _instance._isar.writeTxnSync(() {
          _instance._isar.repositorieys.putSync(newRepo);
        });
      }
    }

    return listRepositoriey;
  }

  Future<int> repoItemCount()async{
 final int result = await _instance._isar.repositorieys.count();
  return result;
  }

  Stream<List<Repositoriey>> watchRepositoriey() {
   final Query<Repositoriey> repositoriey =
        _instance._isar.repositorieys.buildQuery();

    return repositoriey.watch(fireImmediately: true);
  }

  Future<int?> getIsarId(int id) async {
    final record =
        await _instance._isar.repositorieys.filter().idEqualTo(id).findFirst();
    if (record != null) {
      return record.isarId;
    }
    return null;
  }
}
