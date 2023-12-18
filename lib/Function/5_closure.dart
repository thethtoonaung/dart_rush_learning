// ----------  Closure Eg 1 ---------------  //
//  scope htel ka value ko function thone pe a pyin ka nay ya aung u pho
void main() {
  int x = 10;
  func2() {
    int z = 30;
    int clsFunc() => z;
    return clsFunc;
  }

  func1() {
    int y = 70;
    print(x);
    int clsfunc1() {
      return y;
    }

    return clsfunc1;
  }

  print(func1()); // give error , can't call y
  print(func2()());
}
// 10
// Closure: () => int
// 30


// ----------  Closure Eg 2  ---------------  //

void mainClosure() {
  Function clos = shop();
  print(clos);
  clos();
}

shop() {
  int price = 200;
  void buy() {
    print(price);
  }

  return buy;
}

//  ⁃ ( or )

void mainCls() {
  Function clos = shop1("pizza");
  print(clos);
  clos(4);
}

shop1(String item) {
  int price = 200;
  void buy(int count) {
    print("$item is ${price + count}");
  }

  return buy;
}

// ⁃ ( or )

void mainCls2() {
  String s = "original";

  child() {
    String x = 'child variable';
    s = "converted";
    print(s);

    String show() => x;
    return show;
  }

  var clos = child();
  print(clos());
}
//converted
//child variable