import 'dart:io';

void main() {
  List<int> T = [1, 2, 3, 6, 7, 10];

  print(binarySearch(T, 6));
}

binarySearch(List<int> T, int x) {
  int min = 0;
  int max = T.length - 1;

  int mid = ((min + max) / 2).floor();

  if (x == T[mid]) {
    return " $mid";
  } else if (x < T[mid]) {
    max = mid + 1;
  } else {
    return mid;
  }
}
