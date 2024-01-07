// encapsulation
// capsule .. say daunk .. say ko bal thi pho lo say htel bar par lal thi pho ma lo
// access_modifier ka dart mar 2 khu bal shi dl => public and private ( _ ) underscore
// library // getter_settter
// open for extension // close for modificatin

import 'package:dart_rush_learning/Oop/number/13_encapsulation_num.dart';

void main(List<String> args) {
  // var no = Number().num;// give error because of private
  // print(no);
  Number number = Number();
  // number.num = 0; // give error because of private
  number.triple(10);

  number.numb = 5;
  number.numb = 0; //close for modification
  number.triple2(10);
}
