// inheritance [single inheritance] [variable , method , super constructor]
// mixin [multiple inheritance] [varialbe and method only ]
// mixin keyword - with

void main() {
  Engineering engineering = Engineering();
  // engineering.english();
  // engineering.physics();
  // engineering.math();
  // Or

  engineering  // splash operator = List ta khu mar nout ta khu htae ray yin thone tet har
  ..english()
  ..physics()
  ..math();

  print(engineering.eng);
}

mixin English { // constructor khaw mi mar soe lo mixin lo khaw p ray
  var eng = "English";

  void english() => print("Studying English");
}

class Physics {
  var phy = "Physics";
  void physics() {
    print("Studying Physics");
  }
}

class Math {
  var mat = "Math";
  void math() => print("Studying Math");
}

// class Engineering extends Math with English, Physics {}
// Or
class Engineering with Math, English, Physics {}
