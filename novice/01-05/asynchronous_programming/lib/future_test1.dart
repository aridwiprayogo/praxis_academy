import 'dart:async';

void main() async {
  var x = await four();
  print(x);

  var mov = await movie();
  print(mov);
}

//abstract class future
Future<int> four() async {
  //return value
  return 6;
}

//abstract class future
Future<String> movie() async {
  //return value
  return 'Challenger Deep';
}
