// import 'dart:ffi';
import 'dart:math';
import 'package:word_generator/word_generator.dart';
import 'names.dart';

void main() {
  print("\n ------------------- Task 1 -------------------");
  runTask1();
  print("\n ------------------- Task 2 -------------------");
  runTask2();
  print("\n ------------------- Task 3 -------------------");
  runTask3();
}

void runTask1() {
  List<int> numbers = List.generate(101, (index) => Random().nextInt(101));
  print("\nМасив випадкових чисел: $numbers");

  print("\n65-й елемент: ${numbers[64]}");

  numbers
    ..insert(49, 1000000000)
    ..removeWhere((e) => e == 24)
    ..removeWhere((e) => e == 45)
    ..removeWhere((e) => e == 66)
    ..removeWhere((e) => e == 88);

  int sumMultipleThree = 0;
  for (var i = 0; i < numbers.length; i++) {
    if (numbers[i] % 3 == 0) {
      sumMultipleThree += numbers[i];
    }
  }
  print("Сума всіх елементів, що діляться на 3: $sumMultipleThree");

  List<int> temp = [];
  for (var element in numbers) {
    if (element % 2 == 0) {
      temp.add(element);
    }
  }
  print("Кількість елементів, що діляться на 2: ${temp.length}");
}

void runTask2() {
  final uniqueNames1 = Set.from(ukrainianNames1);
  final uniqueNames2 = Set.from(ukrainianNames2);

  final intersectionNames = uniqueNames1.intersection(uniqueNames2);
  print(
    "\nКількість спільних імен з двох списків: ${intersectionNames.length}",
  );

  final uniqueUkrainianNames1 = uniqueNames1.difference(uniqueNames2);
  print(
    "\nУнікальні імена від ChatGPT: $uniqueUkrainianNames1 -- всього ${uniqueUkrainianNames1.length}",
  );

  final uniqueUkrainianNames2 = uniqueNames2.difference(uniqueNames1);
  print(
    "\nУнікальні імена від Gemini: $uniqueUkrainianNames2 -- всього ${uniqueUkrainianNames2.length}",
  );

  print("\nНе сходиться 😡 - роблю перевірку:");
  print("Унікальних імен зі списку ChatGPT: ${uniqueNames1.length}");
  print("Унікальних імен зі списку Gemini: ${uniqueNames2.length}");
  print("\nВиходить що ChatGPT надав 50 імен, але зробив одне повторення 😐");
}

void runTask3() {
  final wordGenerator = WordGenerator();
  List<String> nounsList = wordGenerator.randomNouns(50);

  Map<String, int> nounsMap = {};
  for (final element in nounsList) {
    nounsMap.addEntries({element: element.length}.entries);
  }
  // print(nounsMap);

  Map<String, int> tempNouns = {};
  for (final entry in nounsMap.entries) {
    if (entry.value % 2 == 0) {
      tempNouns.addEntries({entry.key: entry.value}.entries);
    }
  }
  print("\nЗгенеровані слова з довжиною слова кратною двом: ");
  tempNouns.forEach((key, value) {
    print(key);
  });
}
