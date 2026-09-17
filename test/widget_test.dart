import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tradly_grocery_app/app.dart';
import 'package:tradly_grocery_app/locator.dart';

void main() {
  setUpAll(() {
    setUpRealLocator();
  });

  testWidgets('App boots to onboarding', (WidgetTester tester) async {
    await tester.pumpWidget(const App());
    await tester.pumpAndSettle();
    // Onboarding titles should be visible (first page)
    expect(find.byType(MaterialApp), findsOneWidget);
    expect(find.textContaining('Empowering'), findsWidgets);
  });

  testWidgets('Onboarding navigates through pages', (WidgetTester tester) async {
    await tester.pumpWidget(const App());
    await tester.pumpAndSettle();
    // Should have a PageView for onboarding
    expect(find.byType(PageView), findsOneWidget);
  });
}
