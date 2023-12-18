// Class and Object

void main() {
  ClsCompany objCompany = ClsCompany(); // instantiation ( object creation )
  objCompany.name = "sony"; // reference variable
  objCompany.location = 'japan';
  objCompany.service();
}

class ClsCompany {
  String? name; // instance variable
  String? location;

  void service() {
    // method
    String service = 'Tecnolocy';
    print("$name give $service");
  }
}
