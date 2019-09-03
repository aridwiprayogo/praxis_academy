# Dart's Basic Syntaxs

### Basic Structure
```dart
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
```
### Keywords

| Here | Is | The | Keyword |
| --- | --- | --- | --- |
| abstract | dynamics | implements | show |
| as | else | imports | static |
| assert | enum | in | super |
| async | export | interface | switch |
| await | extends | is | sync |
| break | external | library | this |
| ...  | ... | ... | ... |

### Built-in Types
Dart is support for these following types:
    -`numbers`
    -`strings`
    -`booleans`
    -`lists` (also known as arrays)
    -`sets`
    -`maps`
    -`runes` (for expressing Unicode characters in a string)
    -`symbols`


To see types implementation touch \me/

### Function
Special session here I implement some functions to ** Shoe Clean and Repair ** system. 

Check it out. (not finish). 
```dart
void main() {
  print('===Shoe-Cleaning-And-Repair===');
  print('==============Menu============');
  print('1 Fast Clean');
  print('2 Deep Clean');
  print('3 Unyellowing');
  print('4 Repaint');
  print('==============================');

  //select menu
  stdout.write('Please select the services : ');
  String selectedServices = stdin.readLineSync().trim();

  if (selectedServices == "1") {
    print('$service1 is selected');

    stdout.write('Checkout ?(y/n) : ');
    String checkoutStatus = stdin.readLineSync().trim();

    if (checkoutStatus == "y") {
      print('Harganya sekian dan terima kasih');
    } else {
      return; // PR
    }
  } else if (selectedServices == "2") {
    print('$service2 is selected');
  } else if (selectedServices == "3") {
    print('$service3 is selected');
  } else if (selectedServices == "4") {
    print('$service4 is selected');
  } else {
    print('Invalid input!');
    print('Try Again!');
    stdout.write('Please select the services : ');
    selectedServices = stdin.readLineSync().trim();
  }

//  services = service1;
//  selectServices();
}

var service1 = 'Fast Clean';
var service2 = 'Deep Clean';
var service3 = 'Unyellowing';
var service4 = 'Repaint';
var service5 = 'Leather Treatment';
var services = ' ';

selectServices() {
  if (services == service1) {
    print('$service1');
  } else {
    print('R U sure?');
  }
}
```
