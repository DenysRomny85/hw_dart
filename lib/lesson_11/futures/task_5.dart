import 'dart:async';

Future<String> delayedCountdown(int seconds) async {
  for (var i = seconds; i > 0; i--) {
    print('$i');
    await Future<void>.delayed(const Duration(seconds: 1));
  }

  return 'Старт!';
}

void main() async {
  final result = await delayedCountdown(3);
  print(result);
}
