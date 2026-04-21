import 'dart:async';

void main() async {
  final stream = Stream.fromIterable([1, 2, 3, 4, 5]);

  await for (final value in stream) {
    print('await for: $value');
  }

  stream.listen((event) => print('listen: $event'));
}
