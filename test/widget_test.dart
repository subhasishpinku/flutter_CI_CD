// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:ulearning_flutter_riverpod/main.dart'; // Update with your correct path
import 'package:ulearning_flutter_riverpod/global.dart';
import 'firebase_test_setup.dart';
import 'shared_preferences_mock.dart'; // Import the test setup file

// void main() {
//   testWidgets('Counter increments smoke test', (WidgetTester tester) async {
//     // Build our app and trigger a frame.
//     await tester.pumpWidget(const MyApp());

//     // Verify that our counter starts at 0.
//     expect(find.text('0'), findsOneWidget);
//     expect(find.text('1'), findsNothing);

//     // Tap the '+' icon and trigger a frame.
//     await tester.tap(find.byIcon(Icons.add));
//     await tester.pump();

//     // Verify that our counter has incremented.
//     expect(find.text('0'), findsNothing);
//     expect(find.text('1'), findsOneWidget);
//   });
// }

void main() {
  setUpAll(() async {
    setupSharedPreferencesMock(); // Initialize SharedPreferences mock
    await initializeFirebase(); // Initialize Firebase
    await Global.init(); // Initialize other global services
  });

  testWidgets('MyWidget has a title and message', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Wait for all the frames to settle.
    await tester.pumpAndSettle();

    // Verify if the app contains a specific text.
    expect(find.text('Welcome'), findsOneWidget);
    expect(find.text('Welcome to MyApp'), findsOneWidget);
  });
}