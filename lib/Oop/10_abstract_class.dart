// abstract class ko extend load yin abstract class htel mar shi tet method twe ko ma phit ma nay override load pay 
//ya
void main(List<String> args) {
  // Person person = Person(); cann't instantiate because of abstract class
  Person person = Engineer();
  person.name();
  person.education();
  var addr = person.address();
  print(addr);

}

abstract class Person{
  void name();
  void education();
  String address();
  void walking(){
    print("Person is walking");
  }
}

class Engineer extends Person{
  @override
  String address() {
    return "Yangon";
  }

  @override
  void education() {
    print("Studing Engerring");
  }

  @override
  void name() {
    print("Mg Mg");
  }

}