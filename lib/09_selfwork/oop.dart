class Book {
  Book({required this.title, required this.author, required this.year});

  String title;
  String author;
  int year;

  void infoBook() {
    print('Назва: $title, Автор: $author, Рік: $year');
  }
}

class Rectangle {
  Rectangle(this.width, this.height, this.units);

  double width;
  double height;
  String units;

  double area() => width * height;
}

class User {
  String name;
  bool isAdmin;

  User(this.name, this.isAdmin);

  User.admin() : name = 'Admin', isAdmin = true;

  Map<String, bool> addUser() {
    return {name: isAdmin};
  }
}

void main() {
  print('\n ------------------- Task 2 -------------------');
  runTask2();
  print('\n ------------------- Task 3 -------------------');
  runTask3();
  print('\n ------------------- Task 4 -------------------');
  runTask4();
}

void runTask2() {
  final firstBook = Book(
    title: 'Місто',
    author: 'Валерій Підмогильний',
    year: 1927,
  );
  firstBook.infoBook();

  final firstRect = Rectangle(20, 10, 'm');
  print('Площа прямокутника: ${firstRect.area()} ${firstRect.units}');
}

void runTask3() {
  final regUser = User('Pavel', false);
  final regUser2 = User('Nick', false);
  final adminUser = User.admin();

  Map<String, bool> allUsers = {
    ...regUser.addUser(),
    ...adminUser.addUser(),
    ...regUser2.addUser(),
  };

  print(allUsers);
}

void runTask4() {}
