// Define a function.
printInteger(int aNumber) {
  print('The number is : $aNumber.'); // Print to console.
}

printString(String someString) {
  print('The String is : $someString');
}

// This is where the app starts executing.
main() {
  var number = 42; // Declare and initialize a variable.
  printInteger(number); // Call a function.

  var string = 'I am String';
  printString(string);
}
