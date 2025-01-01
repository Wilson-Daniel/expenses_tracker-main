import 'package:flutter/material.dart';
import 'package:flutter_expense_manager/Controllers/home_controller.dart';
import 'package:flutter_expense_manager/Controllers/theme_controllers.dart';
import 'package:flutter_expense_manager/Presentations/Screens/home_page_screen.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';

void main() {
  setUp(() {
    Get.put(HomeController());
    Get.put(ThemeController());
  });

  group('HomePageScreen Widget Tests', () {
    testWidgets('Should display app bar title', (WidgetTester tester) async {
      await tester.pumpWidget(
        GetMaterialApp(
          home: HomePageScreen(),
        ),
      );

      // Verify app bar title
      expect(find.text('Expense Manager'), findsOneWidget);
    });

    testWidgets('Should display select currency widget', (WidgetTester tester) async {
      await tester.pumpWidget(
        GetMaterialApp(
          home: HomePageScreen(),
        ),
      );

      // Verify select currency text
      expect(find.text('Select Currency'), findsOneWidget);
    });

    testWidgets('Should display income and expense widgets', (WidgetTester tester) async {
      await tester.pumpWidget(
        GetMaterialApp(
          home: HomePageScreen(),
        ),
      );

      // Verify income and expense widgets
      expect(find.text('Income'), findsOneWidget);
      expect(find.text('Expense'), findsOneWidget);
    });

    testWidgets('Should navigate to Add Transaction screen on FAB click', (WidgetTester tester) async {
      await tester.pumpWidget(
        GetMaterialApp(
          home: HomePageScreen(),
        ),
      );

      // Tap on FloatingActionButton
      await tester.tap(find.byType(FloatingActionButton));
      await tester.pumpAndSettle();

      // Verify navigation to Add Transaction Screen
      expect(find.text('Add Transaction'), findsOneWidget);
    });

    testWidgets('Should open date picker on calendar icon click', (WidgetTester tester) async {
      await tester.pumpWidget(
        GetMaterialApp(
          home: HomePageScreen(),
        ),
      );

      // Tap on calendar icon
      await tester.tap(find.byIcon(Icons.calendar_month));
      await tester.pumpAndSettle();

      // Verify DatePicker opens
      expect(find.byType(DatePickerDialog), findsOneWidget);
    });

    testWidgets('Should display chart screen on chart icon click', (WidgetTester tester) async {
      await tester.pumpWidget(
        GetMaterialApp(
          home: HomePageScreen(),
        ),
      );

      // Tap on chart icon
      await tester.tap(find.byIcon(Icons.bar_chart));
      await tester.pumpAndSettle();

      // Verify navigation to Chart Screen
      expect(find.text('Charts'), findsOneWidget);
    });
  });
}
