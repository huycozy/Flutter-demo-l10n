// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String entityComment2Actors(String actor1, String actor2, int otherCount,
      String entityKind, String latestComment) {
    String _temp0 = intl.Intl.pluralLogic(
      otherCount,
      locale: localeName,
      other: ' and $otherCount others',
      one: ' and 1 other',
      zero: '',
    );
    String _temp1 = intl.Intl.selectLogic(
      latestComment,
      {
        'null': '.',
        'other': ': “$latestComment”',
      },
    );
    return '$actor1 and $actor2$_temp0 commented on your $entityKind$_temp1.';
  }
}
