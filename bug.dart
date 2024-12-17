```dart
import 'dart:async';

Future<void> main() async {
  // This will cause an error when called multiple times in quick succession.
  await doSomething();
  await doSomething();
}

Future<void> doSomething() async {
  // Simulate an asynchronous operation
  await Future.delayed(Duration(seconds: 1));
  print('doSomething completed');
}
```