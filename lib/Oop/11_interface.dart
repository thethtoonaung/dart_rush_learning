// interface = some same abstract class
// keyword = implements
// implement so parent class htel ka method ko ma phit ma nay override load ya mal
// abstract class ka class ta khu bal extend load lo ya dl / interface ka implement so p class a myar gyi load lo ya

void main() {
  Student2 student2 = Student2();
  student2
    ..english()
    ..math()
    ..physics();
}

class English {
  void english() {}
}

class Math {
  void math() {}
}

class Physics {
  void physics() {}
}

class Student implements English {
  @override
  void english() {
    // TODO: implement english
  }
}

class Student2 implements English, Math, Physics {
  @override
  void english() {
    // TODO: implement english
    print("Studying English");
  }

  @override
  void math() {
    // TODO: implement math
    print("Studying Math");
  }

  @override
  void physics() {
    // TODO: implement physics
    print("Studying Physics");
  }
}
