import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


/// Dialog to confirm if user wants to reset the current FlexColorscheme setup.
class ResetSettingsDialog extends ConsumerWidget {
  const ResetSettingsDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final String usedDb =
    //     ref.watch(usedKeyValueDbProvider.notifier).state.describe;
    return AlertDialog(
      title: const Text('Reset Theme Settings'),
      content: const Text('Reset all theme settings back to their '
          'default values?\n'
          'Persisted theme settings will also be updated to default '
          'values.'),
      actions: <Widget>[
        TextButton(
            onPressed: () {
              Navigator.of(context).pop(false);
            },
            child: const Text('Cancel')),
        TextButton(
            onPressed: () {
              Navigator.of(context).pop(true);
            },
            child: const Text('Reset')),
      ],
    );
  }
}
