import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get helloWorld => 'Hello World!';

  @override
  String loginFailed({required String message}) {
    return 'Login failed!\n$message';
  }

  @override
  String special({required int number, required int price}) {
    return '$price foo $number zoo';
  }
}
