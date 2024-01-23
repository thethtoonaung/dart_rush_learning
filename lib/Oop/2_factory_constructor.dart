class Animal {
  String? name;
  Animal() {
    print("Normal Construtor");
  }

  Animal.eat() {
    print("Animal Eating");
  }

  Animal.name() {
    // print("Named Constrictor");
    Animal();
  }

  factory Animal.factoryConstruct() {
    return Animal.name();
  }
}

void main(List<String> args) {
  Animal ani = Animal.factoryConstruct();
}
