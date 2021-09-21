import 'dart:io';
import 'dart:math';

int darts(double x, double y) {
  int pts;
  double distance;
  distance = sqrt(x * x + y * y);
  if (distance <= 1) {
    pts = 10;
  } else if (distance <= 5) {
    pts = 5;
  } else if (distance <= 10) {
    pts = 1;
  } else {
    pts = 0;
  }
  return pts;
}

void main() {
  int ptsx;
  print('Insert X coordinate:');
  double? x = double.parse(stdin.readLineSync()!);
  print('Insert Y coordinate');
  double? y = double.parse(stdin.readLineSync()!);
  ptsx = darts(x, y);
  print('Point is $ptsx');
}
