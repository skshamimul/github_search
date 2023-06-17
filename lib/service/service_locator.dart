import 'package:get_it/get_it.dart';

import '../app/router/app_router.dart';

GetIt getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  // services
  getIt.registerSingleton<AppRouter>(AppRouter());
  
}
