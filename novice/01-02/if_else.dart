import 'dart:io';

void main() {
  var happyEmotion = "（＞ｙ＜）";
  var sadEmotion = "(ㄒoㄒ)";
  var angerEmotion = "(｀Д´)";

//  print('How your feel ? : $happyEmotion');

  bool happy = true;
  bool sad = true;
  bool angry = true;

  happy = false;
  sad = false;
//  angry = false;

  print('How you feel ?');

  if (happy == true) {
    print(happyEmotion);
  } else if (sad == true) {
    print(sadEmotion);
  } else {
    print(angerEmotion);
  }
}
