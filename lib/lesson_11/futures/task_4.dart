import 'package:hw_dart/lesson_11/futures/task_1.dart';
import 'package:hw_dart/lesson_11/futures/task_2.dart';

void main() async {
  final stopwatch = Stopwatch();
  stopwatch.start();

  final results = await Future.wait([fetchName(), fetchAge()]);

  stopwatch.stop();

  print('Мене звати ${results[0]}');
  print('Мені ${results[1]} років');
  print('Час виконання: ${stopwatch.elapsedMilliseconds} мс');
}
