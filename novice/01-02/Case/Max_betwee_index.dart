void main() {
  var T = [1, 2, 3, 6, 10, 7];
  var max = T[0];
//  int i;

  for (var i = 0; i < T.length; i++) {
    if (T[i] >= max) {
      max = T[i];
      print(max);
    }
  }
}
