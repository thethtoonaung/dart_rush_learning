class Number {
  int _num = 3;

  void triple(int n) {
    print(n * _num);
  }

  int get numb => // private phit nay tet value ko getter net u
      _num;
  // private phit nay tet value ko change chin yin
  // -- getter setter net htae

  set numb(int value) {
    if (value > 0) {
      _num = value;
    } else {
      numb = 1;
    }
  }

  void triple2(int n) {
    print(n * numb);
  }
}
