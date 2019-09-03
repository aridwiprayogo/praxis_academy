//Main Class
void main() {
  circle.pi;
  print(circle.pi);

  //execute static method
  circle.calculateArea();
}

//Secondary Class
class circle {
  //declarate static member/variable
  static double pi = 3.14;

  //declarare static method
  static void calculateArea() {
    print('Some code to calculare area');
  }
}
