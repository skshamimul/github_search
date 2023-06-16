/// App name and info constants.
class AppConst {
  // This class is not meant to be instantiated or extended; this constructor
  // prevents instantiation and extension.
  AppConst._();

  /// Name of the app.
  static const String appName = 'Github Search';

  /// Used version of FlexColorScheme package.
  static const String packageVersion = '7.1.2';

  /// Build with Flutter version.
  static const String flutterVersion = 'Channel stable v3.10.0';

  /// Copyright years notice.
  static const String copyright = '© 2021-2023';

  static const String appKey = 'secret';
  static const String apiRestUrl = 'https://api.github.com';
  static const String apiSocketUrl = '';
  static const String apiAccessToken = '';
  static const int receiveTimeout = 15000;
  static const int connectTimeout = 5000;
  static const int sendTimeout = 15000;
  static const String version = '0.0.01';
  static const Map<String, String> defaultHeaders = {};
}
