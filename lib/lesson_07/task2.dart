import 'package:hw_dart/lesson_07/homework/names_deepseek.dart';
import 'package:hw_dart/lesson_07/homework/names_gpt.dart';

void main() {
  final set1 = ukrainianNamesDeepseek.intersection(ukrainianNamesGPT);
  print(set1);
  print('length: ${set1.length}');

  final set2 = ukrainianNamesGPT.difference(ukrainianNamesDeepseek);
  print(set2);

  final set3 = ukrainianNamesDeepseek.difference(ukrainianNamesGPT);
  print(set3);
}
