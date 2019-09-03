import 'dart:async';

//Form of input/output processing that permits other processing to continue before the transmission has finished.

//so we put async modifier to main because we gonna use asynchronous in it
void main() async {
  //so here we put await modifier before we call the function that mean "go ahead, don't wait we"
  await hello();
  print('all done');
}

//here is the function that we gonna run asynchronously
//again put async modifier before the curly bracket{}
void hello() async {
  print('magic happen here');
}
