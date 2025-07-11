import 'dart:async';

void main() {
  // runTask6();
  // runTask7();
  runTask8();
}

void runTask6() async {
  await for (int value in streamFromIterable()) {
    print(value);
  }
  streamFromIterable().listen((value) {
    print(value);
  });
}

void runTask7() async {
  streamPeriodic().listen((value) {
    print("${value + 1}...");
  });
}

void runTask8() async {
  final streamController = StreamController<String>();
  streamController.sink.add('Hello');
  streamController.sink.add('World');
  streamController.sink.add('Dart');
  streamController.stream.listen(
    (data) => print(data),
    onDone: () => print('Стрім завершено'),
  );
  streamController.close();
}

Stream<int> streamFromIterable() {
  final numbers = [1, 2, 3, 4, 5];
  return Stream.fromIterable(numbers);
}

Stream<int> streamPeriodic() {
  return Stream.periodic(Duration(seconds: 1), (i) => i).take(10);
}
