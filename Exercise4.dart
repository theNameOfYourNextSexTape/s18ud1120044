import 'dart:io';

bool leapYear(int y) => y % 4 == 0 && (y % 100 != 0 || y % 400 == 0);
void main() {
  print('Enter a year');
  int? y = int.parse(stdin.readLineSync()!);
  print(leapYear(y)
      ? 'The year you have entered is a leap year.'
      : 'The year you have entered is not a leap year.');
}
