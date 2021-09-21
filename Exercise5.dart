import 'dart:io';
import "dart:math";

bool ArmstrongNumber(int num) {
  int numMod = 0;
  int total = 0;
  int firstNum = num;
  List<int> numbers = [];
  if (num == 0) {
    return true;
  } else {
    while (num > 0) {
      numMod = num % 10;
      numbers.add(numMod);
      num = num ~/ 10;
    }
    for (int i = 0; i < numbers.length; i++) {
      total = total + pow(numbers[i], numbers.length).toInt();
    }
    if (total == firstNum)
      return true;
    else
      return false;
  }
}

void main() {
  print('Enter a number');
  int? x = int.parse(stdin.readLineSync()!);
  print(ArmstrongNumber(x)
      ? 'The number you have entered is an Armstrong number.'
      : 'The number you have entered is not an Armstrong number.');
}
