void main() {
  //Main Class
  fruit f1 = new fruit();

  //Call function
  f1.showfruit();
}

class fruit {
  //
  String name = 'Watermelon';
  String color = 'Red';

//  declare function in fruit class
  void showfruit() {
    print('fruit name is ${name} and the color is ${color}');
  }
}
