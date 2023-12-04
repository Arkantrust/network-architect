// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:network_architect/src/game.dart';

void main() {
  testWidgets('Home Menu Buttons Exist', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const Game());

    // Verify that the three buttons exist
    expect(find.text('Play'), findsOneWidget);
    expect(find.text('How to Play?'), findsOneWidget);
    expect(find.text('Exit'), findsOneWidget);
  });
}
