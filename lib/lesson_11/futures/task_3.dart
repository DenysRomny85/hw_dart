import 'package:hw_dart/lesson_11/futures/task_1.dart';
import 'package:hw_dart/lesson_11/futures/task_2.dart';

void main() async {
  final stopwatch = Stopwatch();
  stopwatch.start();

  final name = await fetchName();
  print('Мене звати $name');

  final age = await fetchAge();
  print('Вік: $age');

  stopwatch.stop();

  print('Час виконання: ${stopwatch.elapsedMilliseconds} мс');
}
