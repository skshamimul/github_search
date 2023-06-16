import '../../../../core/constants/app_db.dart';
import 'key_value_db.dart';
import 'key_value_db_hive.dart';
// import 'key_value_db_mem.dart';
// import 'key_value_db_prefs.dart';

/// An enhanced enum used to represent, select and describe the used
/// [KeyValueDb] implementation.
enum UsedKeyValueDb {
  // memory(),
  // sharedPreferences(),
  hive(AppDb.keyValueFilename); // Used filename for the Hive storage box.

  final String _filename;
  const UsedKeyValueDb([this._filename = '']);

  /// Get the [KeyValueDb] implementation corresponding to the enum value.
  KeyValueDb get get {

     return KeyValueDbHive(_filename);
  }


}
