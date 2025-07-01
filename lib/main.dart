import 'names.dart';

void main() {
  print(" ------------------- Task 1 -------------------");
  runTask1();
  // print(" ------------------- Task 2 -------------------");
  // runTask2();
  // print(" ------------------- Task 3 -------------------");
  // runTask3();
}

void runTask1() {}

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
