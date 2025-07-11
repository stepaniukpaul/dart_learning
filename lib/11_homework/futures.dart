void main() {
  // runTask1();
  // runTask2();
  // runTask3();
  // runTask4();
  runTask5();
}

void runTask1() async {
  String name = await fetchName();
  print('\n ------------------- Task 1 -------------------');
  print('Мене звати $name');
}

void runTask2() async {
  String age = await fetchAge();
  List<String> ageDigits = age.split('');
  String noun;
  switch (ageDigits.last) {
    case '1':
      noun = 'рік';
    case '2':
    case '3':
    case '4':
      noun = 'роки';
    default:
      noun = 'років';
  }

  print('\n ------------------- Task 2 -------------------');
  print('Мені $age років');
  print('Мені $age $noun');
}

void runTask3() async {
  final stopwatch = Stopwatch();
  stopwatch.start();

  String name = await fetchName();

  stopwatch.stop();

  print('\n ------------------- Task 3 -------------------');
  print('Мене звати $name');
  print('Час виконання в мілісекундах: ${stopwatch.elapsedMilliseconds}');

  stopwatch.reset();
  stopwatch.start();

  String age = await fetchAge();
  List<String> ageDigits = age.split('');
  String noun;
  switch (ageDigits.last) {
    case '1':
      noun = 'рік';
    case '2':
    case '3':
    case '4':
      noun = 'роки';
    default:
      noun = 'років';
  }

  stopwatch.stop();

  print('Мені $age $noun');
  print('Час виконання в мілісекундах: ${stopwatch.elapsedMilliseconds}');
}

void runTask4() async {
  final stopwatch = Stopwatch();
  stopwatch.start();

  final data = await Future.wait([fetchName(), fetchAge()]);
  String name = data[0];
  String age = data[1];
  List<String> ageDigits = age.split('');
  String noun;
  switch (ageDigits.last) {
    case '1':
      noun = 'рік';
    case '2':
    case '3':
    case '4':
      noun = 'роки';
    default:
      noun = 'років';
  }

  stopwatch.stop();

  print('\n ------------------- Task 4 -------------------');
  print('Мене звати $name');
  print('Мені $age $noun');
  print('Час виконання в мілісекундах: ${stopwatch.elapsedMilliseconds}');
}

void runTask5() async {
  print('\n ------------------- Task 5 -------------------');
  String countdown = await delayedCountdown(5);
  print(countdown);
}

Future<String> fetchName() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Павло';
}

Future<String> fetchAge() async {
  await Future.delayed(Duration(milliseconds: 1500));
  return '33';
}

Future<String> delayedCountdown(int seconds) async {
  for (int i = seconds; i > 0; i--) {
    print("$i...");
    await Future.delayed(Duration(milliseconds: 1000));
  }
  return 'Start!';
}
