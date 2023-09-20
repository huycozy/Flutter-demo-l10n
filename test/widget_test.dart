// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_gen_l10n/l10n/app_localizations.dart';

import 'package:test_gen_l10n/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });

  group('Locale Integration Tests', () {
    final supportedLocale = AppLocalizations.supportedLocales[0]; // 'en'
    final supportedLocaleAlternative = AppLocalizations.supportedLocales[1]; // 'es'
    final supportedLocalesList = [supportedLocale, supportedLocaleAlternative];

    testWidgets('Start in first device locale (supported)',
            (WidgetTester tester) async {
          tester.platformDispatcher.localesTestValue = supportedLocalesList;
          expect(tester.platformDispatcher.locales, supportedLocalesList);

          await tester.pumpWidget(const MyApp());
          await tester.pumpAndSettle();
          debugDumpApp();

          final context = tester.element(find.byType(DemoHome));
          expect(Localizations.localeOf(context), supportedLocalesList.first);
        });
  });
}
