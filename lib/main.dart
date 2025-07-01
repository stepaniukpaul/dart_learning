import 'dart:ffi';
import 'dart:math';

import 'names.dart';

void main() {
  print(" ------------------- Task 1 -------------------");
  runTask1();
  // print(" ------------------- Task 2 -------------------");
  // runTask2();
  // print(" ------------------- Task 3 -------------------");
  // runTask3();
}

void runTask1() {
  List<int> numbers = List.generate(101, (index) => Random().nextInt(101));
  print("\nМасив випадкових чисел: $numbers");

  final nthNum = numbers[64];
  print("\n65-й елемент: $nthNum");

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
  final lengthMultipleTwo = temp.length;
  print("Кількість елементів, що діляться на 2: $lengthMultipleTwo");
}

void runTask2() {
  final uniqueNames1 = Set.from(ukrainianNames1);
  final uniqueNames2 = Set.from(ukrainianNames2);

  final intersectionNames = uniqueNames1.intersection(uniqueNames2);
  final intersectionNamesCount = intersectionNames.length;
  print("\nКількість спільних імен з двох списків: $intersectionNamesCount");

  final uniqueUkrainianNames1 = uniqueNames1.difference(uniqueNames2);
  final uniqueUkrainianNames1Count = uniqueUkrainianNames1.length;
  print(
    "\nУнікальні імена від ChatGPT: $uniqueUkrainianNames1 -- всього $uniqueUkrainianNames1Count",
  );

  final uniqueUkrainianNames2 = uniqueNames2.difference(uniqueNames1);
  final uniqueUkrainianNames2Count = uniqueUkrainianNames2.length;
  print(
    "\nУнікальні імена від Gemini: $uniqueUkrainianNames2 -- всього $uniqueUkrainianNames2Count",
  );

  print("\nНе сходиться 😡 - роблю перевірку:");
  final uniqueNames1Count = uniqueNames1.length;
  print("Унікальних імен зі списку ChatGPT: $uniqueNames1Count");
  final uniqueNames2Count = uniqueNames2.length;
  print("Унікальних імен зі списку Gemini: $uniqueNames2Count");
  print("\nВиходить що ChatGPT надав 50 імен, але зробив одне повторення 😐");
}

void runTask3() {}
