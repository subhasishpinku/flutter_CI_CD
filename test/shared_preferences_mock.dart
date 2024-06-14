import 'package:shared_preferences/shared_preferences.dart';
import 'package:mockito/mockito.dart';

class MockSharedPreferences extends Mock implements SharedPreferences {}

void setupSharedPreferencesMock() {
  SharedPreferences.setMockInitialValues({}); // Initialize with empty values
}
