import 'app_localizations.dart';

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get helloWorld => '「こんにちは世界」';

  @override
  String loginFailed({required String message}) {
    return 'ログインに失敗しました！\n$message';
  }

  @override
  String special({required int number, required int price}) {
    return '$price foo $number zoo';
  }
}
