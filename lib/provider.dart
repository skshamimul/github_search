import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app/github_app.dart';
import 'service/api_service.dart';

final githubAppProvider = Provider<GithubApp>((ref) => GithubApp.instance);


final apiServiceProvider =
    Provider<ApiService>((ref) => ApiService(ref.read(githubAppProvider)));
