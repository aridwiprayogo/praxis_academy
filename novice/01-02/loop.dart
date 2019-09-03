main() {
  //for loop syntax
  //for(initializer; condition; increment/decrement){#action}
  //flow : Initialize -> condition check -> increment
  for (int i = 1; i <= 7; i++) {
    print(i);
  }

  //for ..inloop
  List dayList = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday"
  ];
  for (String days in dayList) {
    print(days);
  }

  //while loop syntax
  //initialize counter
  //while(condition){
  // hit code
  // increment/decrement}
  //flow : (Initialize)-> condition check, execute code -> increment
  int w = 0;
  while (w <= 7) {
    print(w);
    w++;
  }
}
