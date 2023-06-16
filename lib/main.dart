import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app/github_app.dart';
import 'app/views/github_search_app.dart';
import 'core/utils/app_provider_observer.dart';
import 'theme/persistence/key_value/models/key_value_db_listener.dart';
import 'theme/persistence/key_value/models/key_value_db_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final ProviderContainer container = ProviderContainer(
    // This observer is used for logging changes in all Riverpod providers.
    observers: <ProviderObserver>[AppProviderObserver()],
  );

  // Get default keyValueDb implementation and initialize it for use.
  await container.read(keyValueDbProvider).init();

  container.read(keyValueDbListenerProvider);

  final githubApp = GithubApp();
  await githubApp.initialize(
    debug: true,
  );

  runApp(
    UncontrolledProviderScope(
      container: container,
      child: const GithubSearchApp(),
    ),
  );
}
