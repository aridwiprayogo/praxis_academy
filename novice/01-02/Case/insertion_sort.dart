void main() {
  var T = [1, 5, 3, 6, 2, 10];

  int i, j, key;

  for (i = 0; i < T.length; i++) {
    key = T[i];
    j = i;
    while (j > 0 && T[j - 1] > key) {
      T[j] = T[j - 1];
      j = j - 1;
    }
    T[j] = key;
  }
  print(T);
}
