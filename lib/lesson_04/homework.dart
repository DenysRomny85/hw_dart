void main() {
  primitives();
  collections();
  varFinalConst();
  record();
  nullable();
}

/// Створи змінні та виведи їх:

/// Завдання 1: Примітивні типи
/// - age (int) — твій вік
/// - height (double) — твій зріст у метрах
/// - name (String) — твоє ім'я
/// - isStudent (bool) — чи ти студент
void primitives() {
  // ignore_for_file: prefer_final_locals, omit_local_variable_types
  int age = 40;
  double height = 173.5;
  String name = 'Denys';
  bool isStudent = true;

  print('age $age');
  print('height $height');
  print('name $name');
  print('isStudent $isStudent');
  print('-----------------------------------');
}

/// Завдання 2: Колекції
/// 1. List — 3 твої улюблені кольори
/// 2. Set — 3 унікальні оцінки, спробуй створити перевір print-ми,
/// що вони не виводяться
/// 3. Map — 3 предмети та їх оцінки
void collections() {
  List<String> colors = ['yellow', 'black', 'red'];
  Set<int> nums = {10, 4, 6};
  Map<String, int> ratingSubjects = {
    'mathematics': 5,
    'literature': 4,
    'physicalСulture': 5,
  };

  for (final el in colors) {
    print('color: $el');
  }

  for (final el in nums) {
    print('set: $el');
  }

  for (final el in ratingSubjects.entries) {
    print('map key: ${el.key} -value: ${el.value}');
  }
}

/// Завдання 3: var, final, const
/// 1. Створи змінну через var — наприклад, місто проживання та зміни
/// її декілька разів (print після кожної зміни)
/// 2. Створи змінну через final — наприклад, країна
/// 3. Створи змінну через const — наприклад, кількість днів у тижні
void varFinalConst() {
  var city = 'Romny';
  print('city: $city');

  city = 'Lviv';
  print('city: $city');

  city = 'Odessa';
  print('city: $city');

  final country = 'Ukraine';
  print('country: ${country.toUpperCase()}');

  const days = 7;
  print('full week: $days days');
}

/// Завдання 4: Record
/// Створи іменований та не іменований (позиційний) record з твоїм ім'ям
/// та віком і виведи обидва поля.
void record() {
  (String, int) user = ('Denys', 40);
  ({String name, int age}) userFull = (name: 'Denys', age: 40);

  print('user ${user.$1} age ${user.$1}');
  print('full user: name ${userFull.name} age ${userFull.age}');
}

/// Завдання 5: Nullable (опціонально)
/// Створи змінну String? nickname — може бути null або ім'я.
/// Виведи її через ??: якщо null — виведи "Немає", інакше — значення.
void nullable() {}
