```dart
import 'dart:async';

Future<void> main() async {
  // Use a more robust approach to handle multiple calls to the asynchronous function.
  await Future.wait([doSomething(), doSomething()]);
}

Future<void> doSomething() async {
  try {
    // Simulate an asynchronous operation
    await Future.delayed(Duration(seconds: 1));
    print('doSomething completed');
  } catch (e) {
    print('Error in doSomething: $e');
    // Handle exceptions appropriately
  }
}
```