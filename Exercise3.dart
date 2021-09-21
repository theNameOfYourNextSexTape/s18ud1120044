import 'dart:io';

bool Isogram(String str) {
  var letters = (str.toLowerCase().split(""))..remove('-');
  return letters.toSet().length == letters.length;
}

void main() {
  print('Enter your sentence');
  String? str = stdin.readLineSync()!;
  print(Isogram(str)
      ? 'The sentence you have entered is an Isogram.'
      : 'The sentence you have entered is not an Isogram.');
}
