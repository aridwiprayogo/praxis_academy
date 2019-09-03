void main() {
  //Fixed leght List(List length can't change at runtime)
  //declaring a list
  var fruitList = new List(5);
  //initializing a list
  fruitList[0] = 'Watermelon';
  fruitList[1] = 'Banana';
  fruitList[2] = 'Pinnaple';
  fruitList[3] = 'Apple';
  fruitList[4] = 'Grape';
  print(fruitList);

  //Growable List(List length can change at runtime)
  var vegetablesList = ['Bok Choy', 'Cabbage', 'Broccoli', 'Corn'];
  print(vegetablesList);
  //add 2 values to list using (.add) function
  vegetablesList.add('Eggplant');
  vegetablesList.add('Pumpkin');
  print(vegetablesList);
  //add all values to list using (.addAll) function
  vegetablesList.addAll(['Tomato', 'Onions']);
  print(vegetablesList);
  //add element/value to specific position using(insert()) function
  vegetablesList.insert(0, 'Potato');
  print(vegetablesList);
  //add multiple elements/values to specific position using(insertAll()) function
  vegetablesList.insertAll(0, ['Onions Red', 'Onions White']);
  print(vegetablesList);

  //updating index
  vegetablesList[0] = 'Young Mango';
  print(vegetablesList);
  //replace range using(replaceRange()) function
  vegetablesList.replaceRange(3, 5, ['Soup Leaf', 'Sere Leaf', 'Onions Leaf']);
  print(vegetablesList);
  //Remove ??? Come back later...
}
