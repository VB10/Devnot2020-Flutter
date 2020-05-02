main(List<String> args) {
  double number1;
  int number2;
  String char1;

  List<int> numbers = List();

  User user1 = User(1);

  var fibNumber = calculateFIB2(number: 5);
  print(fibNumber);

  if (number1 == null) {
  } else {}

  for (var i = 0; i < 5; i++) {}

  switch (char1) {
    case "":
      break;
    default:
  }
}

Future<void> sayHello() async {
  Future.delayed(Duration(seconds: 500)).then((val) {});
  // 2
  await Future.delayed(Duration(milliseconds: 500));
}

int calculateFIB({int number}) {
  if (number < 1) {
    return 0;
  } else if (number < 2) {
    return 1;
  } else {
    return calculateFIB(number: number - 2) + calculateFIB(number: number - 1);
  }
}

int calculateFIB2({int number}) => number < 2
    ? number
    : calculateFIB(number: number - 2) + calculateFIB(number: number - 1);

//  {
//   if (number < 1) {
//     return 0;
//   } else if (number < 2) {
//     return 1;
//   } else {
//     return calculateFIB(number: number - 2) + calculateFIB(number: number - 1);
//   }
// }

class User {
  int number1;
  int _number2;

  User(this.number1);
}
