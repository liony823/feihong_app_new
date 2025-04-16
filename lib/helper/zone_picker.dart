import 'package:common/common.dart';
import 'package:flutter/cupertino.dart';

class ZonePicker {
  static Future<String?> showPicker(
      BuildContext context, String zone, List<Country> countries) async {
    final result = await showCupertinoSheet<String>(
      context: context,
      useNestedNavigation: true,
      pageBuilder: (context) => ZoneSheet(
        zone: zone,
        countries: countries,
      ),
    );
    return result;
  }
}
