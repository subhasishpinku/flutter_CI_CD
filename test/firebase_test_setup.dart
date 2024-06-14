import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_core_platform_interface/firebase_core_platform_interface.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
// ignore: depend_on_referenced_packages
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFirebaseApp extends Mock with MockPlatformInterfaceMixin implements FirebaseApp {}

class MockFirebaseAppPlatform extends Mock with MockPlatformInterfaceMixin implements FirebaseAppPlatform {
  FirebaseApp get appInstance => MockFirebaseApp();
}

class MockFirebasePlatform extends Mock with MockPlatformInterfaceMixin implements FirebasePlatform {
  @override
  Future<FirebaseAppPlatform> initializeApp({
    String? name,
    FirebaseOptions? options,
  }) async {
    return MockFirebaseAppPlatform();
  }
}

void setupFirebaseMocks() {
  final FirebasePlatform mockFirebasePlatform = MockFirebasePlatform();
  FirebasePlatform.instance = mockFirebasePlatform;
}

Future<void> initializeFirebase() async {
  setupFirebaseMocks();
  await Firebase.initializeApp();
}
