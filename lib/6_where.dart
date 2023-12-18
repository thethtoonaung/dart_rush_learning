// 6 - WHERE IN DART
// Where Dart
// You can use where in list, set, map to filter specific items.
// It returns a new list containing all the elements that satisfy the condition.
// This is also called Where Filter in dart.

// Syntax
// Iterable<E> where(
// bool test(
// E element
// )
// )

// Example 1: Filter Only Odd Number From List
List<int> numbers = [2, 4, 6, 8, 10, 11, 12, 13, 14];
List<int> oddNumbers = numbers.where((number) => number.isOdd).toList();
// // results =>
// [11, 13]

// Example 2: Filter Days Start With S
List<String> days = [
  "Sunday",
  "Monday",
  "Tuesday",
  "Wednesday",
  "Thursday",
  "Friday",
  "Saturday"
];

List<String> startWithS =
    days.where((element) => element.startsWith("S")).toList();
// // results =>
// [Sunday, Saturday]

// Example 3: Where Filter In Map

void main() {
  Map<String, double> mathMarks = {
    "ram": 30,
    "mark": 32,
    "harry": 88,
    "raj": 69,
    "john": 15,
  };

  mathMarks.removeWhere((key, value) => value < 32);
}
// // results =>
// {mark: 32.0, harry: 88.0, raj: 69.0}
