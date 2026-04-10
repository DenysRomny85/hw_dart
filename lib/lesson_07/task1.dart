import 'dart:math';

void main() {
  final list = List.generate(100, (index) => Random().nextInt(101));
  print(list);
  print('65-й елемент: ${list[65]}');
  list.insert(50, 1000000000);
  print('50-й елемент: ${list[50]}');

  final remoteList = {24, 45, 66, 88};
  list.removeWhere(remoteList.contains);
  print(list);

  var sum = 0;
  for (var index = 0; index < list.length; index++) {
    if (list[index] % 3 == 0) {
      sum += list[index];
    }
  }
  print('sum: $sum');

  final temp = <int>[];
  for (final el in list) {
    if (el % 2 == 0) {
      temp.add(el);
    }
  }
  print('length temp: ${temp.length}');
  print(temp);
}
