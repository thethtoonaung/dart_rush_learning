// 4 - Lists
// If you want to store multiple values in the same variable, you can use List. List in dart is similar to Arrays in other programming languages.  The List is represented by Square Braces[].

void main() {
  List<String> names = ["Raj", "John", "Max"];
  print("Value of names is $names");
  print("Value of names[0] is ${names[0]}"); // index 0

  // Finding Length of List
  int length = names.length;
  print(length);
// }

// Integer List
  List<int> ages = [10, 30, 23];
// String List
  List<String> stringList = ["Raj", "John", "Rocky"];
// Mixed List
  var mixed = [10, "John", 18.8];

// ---------------------------------------- //

// Types Of Lists
// 	•	Fixed Length List
// 	•	Growable List [Mostly Used]

// Fixed Length List
  var list = List<int>.filled(5, 0);
// [0, 0, 0, 0, 0]

// Growable List
  var list1 = [210, 21, 22, 33, 44, 55];

// Access Item Of List
  var accessItemList = [210, 21, 22, 33, 44, 55];
  print(accessItemList[0]);

// Get Index By Value
  var list2 = [210, 21, 22, 33, 44, 55];
  print(list2.indexOf(22));
// 2

// Find The Length Of The List
  List<String> name2 = ["Raj", "John", "Rocky"];
  print(name2.length);

// Changing Values Of List
  List<String> name3 = ["Raj", "John", "Rocky"];
  name3[1] = "Bill";

// Mutable And Immutable List
  List<String> names4 = ["Raj", "John", "Rocky"]; // Mutable List
  names4[1] = "Bill"; // possible

  const List<String> names5 = ["Raj", "John", "Rocky"]; // Immutable List
  names5[1] = "Bill"; // not possible

// List Properties In Dart
// 	•	first: It returns the first element in the List.
// 	•	last: It returns the last element in the List.
// 	•	isEmpty: It returns true if the List is empty and false if the List is not empty.
// 	•	isNotEmpty: It returns true if the List is not empty and false if the List is empty.
// 	•	length: It returns the length of the List.
// 	•	reversed: It returns a List in reverse order.
// 	•	single: It is used to check if the List has only one element and returns it.

// Access First And Last Elements Of List
  List<String> drinks = ["water", "juice", "milk", "coke"];
  print("First element of the List is: ${drinks.first}");
  print("Last element of the List is: ${drinks.last}");

// Check The List Is Empty Or Not
  List<String> drinks1 = ["water", "juice", "milk", "coke"];
  List<int> ages1 = [];
  print("Is drinks Empty: " + drinks1.isEmpty.toString());
  print("Is drinks not Empty: " + drinks1.isNotEmpty.toString());
  print("Is ages Empty: " + ages1.isEmpty.toString());
  print("Is ages not Empty: " + ages1.isNotEmpty.toString());
// Is drinks Empty: false
// Is drinks not Empty: true
// Is ages Empty: true
// Is ages not Empty: false

// Reverse List In Dart
  List<String> drinks2 = ["water", "juice", "milk", "coke"];
  print("List in reverse: ${drinks2.reversed}");

// Adding Item To List
//  four methods to insert the elements into the Lists.

// add() - Add one element at a time and returns the modified List object.
// addAll() - Insert the multiple values to the given List, and each value is separated by the commas and enclosed with a square bracket ([]).
// insert() - Provides the facility to insert an element at a specified index position.
// insertAll() - Insert the multiple value at the specified index position.

// Example 1: Add Item To List
  var evenList = [2, 4, 6, 8, 10];
  evenList.add(12);

// Example 2: Add Items To List
  var evenList2 = [2, 4, 6, 8, 10];
  evenList2.addAll([12, 14, 16, 18]);
// [2, 4, 6, 8, 10, 12, 14, 16, 18]

// Example 3: Insert Item To List
  List myList = [3, 4, 2, 5];
  myList.insert(2, 15);
// [3, 4, 15, 2, 5]

// Example 4: Insert Items To List
  var myList1 = [3, 4, 2, 5];
  myList1.insertAll(1, [6, 7, 10, 9]);
// [3, 6, 7, 10, 9, 4, 2, 5]

// Replace Range Of List
  var list3 = [10, 15, 20, 25, 30];
  print("List before updation: ${list}");
  list.replaceRange(0, 4, [5, 6, 7, 8]);
  print("List after updation using replaceAll() function : ${list}");
// // result -> List after updation using replaceAll() function : [5, 6, 7, 8, 30]

// Removing List Elements
// remove() - Removes one element at a time from the given List.
// removeAt() - Removes an element from the specified index position and returns it.
// removeLast() - Remove the last element from the given List.
// removeRange() - Removes the item within the specified range.

// Example 1: Removing List Item From List
  var removelist = [10, 20, 30, 40, 50];
  removelist.remove(30);
// Example 2: Removing List Item From List
  var removeIndexList = [10, 11, 12, 13, 14];
  removeIndexList.removeAt(3);
// Example 3: Removing Last Item From List
  var removeLastList = [10, 20, 30, 40, 50];
  removeLastList.removeLast();
// Example 4: Removing List Range From List
  var listRange = [10, 20, 30, 40, 50];
  listRange.removeRange(0, 3);
// [40, 50]

// Loops In List
//  for loop, for each loop, or any other type of loop.
  List<int> forEachList = [10, 20, 30, 40, 50];
  forEachList.forEach((n) => print(n));
// 10
// 20
// 30
// 40
// 50

// Multiply All Value By 2 Of All List
  List<int> alllist = [10, 20, 30, 40, 50];
  var douledList = alllist.map((n) => n * 2);
// (20, 40, 60, 80, 100)

// Combine Two Or More List In Dart
  List<String> names1 = ["Raj", "John", "Rocky"];
  List<String> names2 = ["Mike", "Subash", "Mark"];

  List<String> allNames = [...names, ...names2];
// [Raj, John, Rocky, Mike, Subash, Mark]

// Conditions In List
  bool sad = false;
  var cart = ['milk', 'ghee', if (sad) 'Beer'];
// //result ->  [milk,ghee]

//  Where In List Dart
List<int> numbers = [2,4,6,8,10,11,12,13,14];
List<int> even = numbers.where((number)=> number.isEven).toList();
// [2, 4, 6, 8, 10, 12, 14]
}
