import 'dart:io';

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
    print('R U sure');
  }
}
