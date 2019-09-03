//Main class
void main() {
  //declarate object of fruit class
  var fruit3 = new fruits();
  fruit3.name = 'Banana';
  fruit3.flavour = 'Sweet';
  fruit3.discovered = 1250;
  //call function
  fruit3.showDetailFruit();

  //declarate object at inherit class (cheap fruit)
  var cheapFruit1 = new cheapFruit();
  cheapFruit1.name = 'Kedondong';
  cheapFruit1.flavour = 'Kadang manis kadang kecut';
  cheapFruit1.discovered = 1777;
  cheapFruit1.cpPrice = 2000;
  //call function
  cheapFruit1.showCheapFuitPrice();

  //declarate object at inherit class (expensive fruit)
  var expensiveFruit1 = new expensiveFruit();
  expensiveFruit1.name = 'Apple';
  expensiveFruit1.flavour = 'Sweet';
  expensiveFruit1.discovered = 1640;
  expensiveFruit1.exPrice = 70000;
  //call function
  expensiveFruit1.showExpensiveFruitPrice();
}

//Secondary class
class fruits {
  String name;
  String flavour;
  int discovered;

  void showDetailFruit() {
    print('$name is discovered in $discovered and has a $flavour flavour');
  }
}

//Inherit class from class fruits
class cheapFruit extends fruits {
  int cpPrice;

  void showCheapFuitPrice() {
    //this method use the variable of fruits class(name, discovered, flavour)
    print(
        '$name is discovered in $discovered and has a $flavour flavour, he is cheap with price Rp$cpPrice/kg');
  }
}

//Inherit class from class fruits
class expensiveFruit extends fruits {
  int exPrice;

  void showExpensiveFruitPrice() {
    //this method use the variable of fruits class(name, discovered, flavour)
    print(
        '$name is discovered in $discovered and has a $flavour flavour, he is expensive with price Rp$exPrice/kg');
  }
}
