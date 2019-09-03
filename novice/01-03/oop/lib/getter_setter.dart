void main() {
  //Main Class
  fruit f1 = new fruit();
  f1.name = 'Pinaple';
  f1.flavour = 'Sweet';
  f1.discovered = 1750;

  print('Fruit name is ${f1.name}');
  print('Fruit flavour is ${f1.flavour}');
  print('Discovered in ${f1.discovered}');
}

//Secondary class
class fruit {
  String name;
  String flavour;
  int discovered;

  //getter
  String get fruitName {
    return name;
  }

  String get fruitFlavour {
    return flavour;
  }

  int get fruitDiscovered {
    return discovered;
  }

//  setter
  void set fruitName(String name) {
    this.name = name;
  }

  void set fruitFlavour(String flavour) {
    this.name = flavour;
  }

  void set fruitDiscovered(int discovered) {
    this.discovered;
  }
}
