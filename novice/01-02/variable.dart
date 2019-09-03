void main() {
  //Creating a variable 'name' and initialize it as String 'Pevita Pirs'
  var name =
      'bob'; //Here is the variable is *infered to be string (disimpulkan sebagai String)

  //The 'dynamic' type here is if the object/value is *restricte to a single data type(tidak terbatas pada satu tipe data)
  dynamic frontName = 'Pevita';

  //Here is another way to create a variable that explisitly to some data type. Oke?
  String userName = 'Pevita Satya Diningrat';

  int lineCount;
  assert(lineCount == null);

  //'final' type is can be set onle once and initialized at the first time it's used.
  //So 'final' here is canot be changed *MUTLAK.
  final brotherName = 'Keenan Pirs';
  final nickName = 'Keenan';

  //const is type that used for constant variable or value
  const bar = 1000000; // Unit of pressure (dynes/cm2)
  const double atm = 1.01325 * bar; // Standard atmosphere
  print(atm);
}
