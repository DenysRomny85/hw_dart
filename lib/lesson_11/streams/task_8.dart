import 'dart:async';

void main() {
  final controller = StreamController<String>();

  controller.stream.listen(print, onDone: () => print('Стрім завершено'));

  controller.add('Hello');
  controller.add('World');
  controller.add('Dart');

  controller.close();
}
