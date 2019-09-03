void main() {
  //Turnins data type to another data type *very important wkwkwk
// String -> int
  var one = int.parse('1');
  assert(one == 1); //ASSERT : HOW ABOUT ME ??

// String -> double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1); //ASSERT : HOW ABOUT ME ??

// int -> String
  String oneAsString = 1.toString();
  assert(oneAsString == '1'); //ASSERT : HOW ABOUT ME ??

// double -> String
  String piAsString = 3.14159.toStringAsFixed(2);
  assert(piAsString == '3.14'); //ASSERT : HOW ABOUT ME ??

  //String variables
  var s1 = 'Single quotes work well for string literals.';
  var s2 = "Double quotes work just as well.";
  var s3 = 'It\'s easy to escape the string delimiter.';
  var s4 = "It's even easier to use the other delimiter.";

  print(s1);
  print(s2);
  print(s3);
  print(s4);

  //Canconate/combine String using adjacent string/math operator
  var st1 = 'String '
      'concatenation'
      " works even over line breaks.";
  assert(st1 ==
      'String concatenation works even over '
          'line breaks.');

  var st2 = 'The + operator ' + 'works, as well.';
  assert(st2 == 'The + operator works, as well.');

  //To create multiline String
  var str1 = '''
        You can create
        multi-line strings like this one.
        ''';

  var str2 = """This is also a
        multi-line string.""";

  print('Here We Go!');
  print(str1);
  print(str2);

  //Boolean's time

  // Boolean : I am just for 2 =>> True or False
  // Check for an empty string.
  var fullName = '';
  assert(fullName.isEmpty);

// Check for zero.
  var hitPoints = 0;
  assert(hitPoints <= 0);

// Check for null.
  var unicorn;
  assert(unicorn == null);

// Check for NaN.
  var iMeantToDoThis = 0 / 0;
  assert(iMeantToDoThis.isNaN);

  //One more,LIST!!
  // important things but ribet to learn
  var list = [1, 2, 3];
  assert(list.length == 3);
  assert(list[1] == 2);

  list[1] = 1;
  assert(list[1] == 1);
}
