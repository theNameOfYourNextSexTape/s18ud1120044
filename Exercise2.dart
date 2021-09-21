import 'dart:io';

void divide(int num) {
  String output = '';
  int divisor = 2;
  while (divisor <= (num / 2)) {
    if (num % divisor == 0) {
      if (divisor == 3) {
        output += ' pling';
      } else if (divisor == 5) {
        output += ' plang';
      } else if (divisor == 7) {
        output += ' plong';
      } else {
        output += ' $divisor';
      }
    }
    divisor++;
  }
  print(output);
}

void main() {
  print('Enter a number');
  int? num = int.parse(stdin.readLineSync()!);
  divide(num);
}
