import 'app_localizations.dart';

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get helloWorld => 'Hello World!';

  @override
  String loginFailed(String message) {
    return 'Login failed!\n$message';
  }
}
