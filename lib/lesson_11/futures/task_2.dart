import 'dart:async';

Future<String> fetchAge() async {
  await Future<void>.delayed(const Duration(milliseconds: 1500));
  return '25';
}

String strYear(int age) {
  if (age % 100 >= 11 && age % 100 <= 14) {
    return 'років';
  }

  switch (age % 10) {
    case 1:
      return 'рік';
    case 2:
    case 3:
    case 4:
      return 'роки';
    default:
      return 'років';
  }
}

void main() async {
  final age = await fetchAge();
  final strAge = strYear(int.parse(age));
  print('Мені $age $strAge');
}
