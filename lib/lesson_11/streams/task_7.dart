import 'dart:async';

void main() async {
  final stream = Stream.periodic(
    const Duration(seconds: 1),
    (count) => count + 1,
  ).take(10);

  await for (final value in stream) {
    print('$value...');
  }
}
