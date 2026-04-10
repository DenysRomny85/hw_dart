import 'dart:async';

Future<String> fetchName() async {
  await Future<void>.delayed(const Duration(seconds: 2));
  return 'Denys';
}

void main() async {
  final name = await fetchName();
  print('Мене звати $name');
}
