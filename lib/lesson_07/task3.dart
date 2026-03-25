import 'package:mocky/mocky.dart';

void main() {
  Mocky.setLocale(Locale.us);
  final randomNouns = Mocky.words(100);
  final nounsMap = {for (final el in randomNouns) el: el.length};
  print(nounsMap);

  final nounsMapFiltered = Map.fromEntries(
    nounsMap.entries.where((el) => el.value % 2 == 0),
  );

  print(nounsMapFiltered);
}
