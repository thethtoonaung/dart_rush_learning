// 5 - Maps

// In a Map, data is stored as keys and values. In Map, each key must be unique. In dart, a map is an object where you can store data in key-value pairs. Each key occurs only once, but you can use same value multiple times.
void main() {
  Map<String, String> myDetails = {
    'key': 'value',
  };
  valueOfMap();
  mapProperties();
  convertMapToList();
  checkMapContainSpecKeyOrValue();
  removingItemFromMap();
  loopingInMapUsingForEach();
  removeWhereInDartMap();
}

// Creating a Map for String and String
Map<String, String> countryCapital = {
  'USA': 'Nothing',
  'India': 'New Delhi',
  'China': 'Beijing'
};

// Access Value From Key
// You can find the value of Map from its key.
void valueOfMap() {
  Map<String, String> countryCapital = {
    'USA': 'Nothing',
    'India': 'New Delhi',
    'China': 'Beijing'
  };
  print(countryCapital["USA"]);
}
// Nothing

// Map Properties In Dart

// keys - To get all keys.
// values - To get all values.
// isEmpty - Return true or false.
// isNotEmpty - Return true or false.
// length - It returns the length of the Map.

// Example Of Map Properties In Dart

void mapProperties() {
  Map<String, double> expenses = {
    'sun': 3000.0,
    'mon': 3000.0,
    'tue': 3234.0,
  };

  print("All keys of Map: ${expenses.keys}");
  print("All values of Map: ${expenses.values}");
  print("Is Map empty: ${expenses.isEmpty}");
  print("Is Map not empty: ${expenses.isNotEmpty}");
  print("Length of map is: ${expenses.length}");
}

// All keys of Map: (sun, mon, tue)
// All values of Map: (3000.0, 3000.0, 3234.0)
// Is Map empty: false
// Is Map not empty: true
// Length of map is: 3

// Adding Element To Map
void addElementToMap() {
  Map<String, String> countryCapital = {
    'USA': 'Washington, D.C.',
    'India': 'New Delhi',
    'China': 'Beijing'
  };
  countryCapital['Japan'] = 'Tokio';
}

// Updating An Element Of Map
void updateElementOfMap() {
  Map<String, String> countryCapital = {
    'USA': 'Nothing',
    'India': 'New Delhi',
    'China': 'Beijing'
  };
  countryCapital['USA'] = 'Washington, D.C.';
}

// Map Methods In Dart

// keys.toList() - Convert all Maps keys to List.
// values.toList() - Convert all Maps values to List.
// containsKey(‘key’) - Return true or false.
// containsValue(‘value’) - Return true or false.
// clear() - Removes all elements from the Map.
// removeWhere() - Removes all elements from the Map if condition is valid.

// Convert Maps Keys & Values To List
void convertMapToList() {
  Map<String, double> expenses = {
    'sun': 3000.0,
    'mon': 3000.0,
    'tue': 3234.0,
  };

//   // Without List
  print("All keys of Map: ${expenses.keys}");
  print("All values of Map: ${expenses.values}");

//   // With List
  print("All keys of Map with List: ${expenses.keys.toList()}");
  print("All values of Map with List: ${expenses.values.toList()}");
}

Map<String, double> expenses = {
  'sun': 3000.0,
  'mon': 3000.0,
  'tue': 3234.0,
};

// //result  ->
// All keys of Map: (sun, mon, tue)
// All values of Map: (3000.0, 3000.0, 3234.0)
// All keys of Map with List: [sun, mon, tue]
// All values of Map with List: [3000.0, 3000.0, 3234.0]

// Check Map Contains Specific Key/Value Or Not?

void checkMapContainSpecKeyOrValue() {
  Map<String, double> expenses = {
    'sun': 3000.0,
    'mon': 3000.0,
    'tue': 3234.0,
  };

  // For Keys
  print("Does Map contain key sun: ${expenses.containsKey("sun")}");
  print("Does Map contain key abc: ${expenses.containsKey("abc")}");

  // For Values
  print("Does Map contain value 3000.0: ${expenses.containsValue(3000.0)}");
  print("Does Map contain value 100.0: ${expenses.containsValue(100.0)}");
}
// //results
// Does Map contain key sun: true
// Does Map contain key abc: false
// Does Map contain value 3000.0: true
// Does Map contain value 100.0: false

// Removing Items From Map
void removingItemFromMap() {
  Map<String, String> countryCapital = {
    'USA': 'Nothing',
    'India': 'New Delhi',
    'China': 'Beijing'
  };
  countryCapital.remove("USA");

// Looping Over Element Of Map
  Map<String, dynamic> book = {
    'title': 'Misson Mangal',
    'author': 'Kuber Singh',
    'page': 233
  };

  // Loop Through Map  // Syntax =>  MapEntry
  for (MapEntry book in book.entries) {
    print('Key is ${book.key}, value ${book.value}');
  }
}
// //results ->
// Key is title, value Misson Mangal
// Key is author, value Kuber Singh
// Key is page, value 233

// Looping In Map Using For Each
void loopingInMapUsingForEach() {
  Map<String, dynamic> book = {
    'title': 'Misson Mangal',
    'author': 'Kuber Singh',
    'page': 233
  };

//  // Loop Through For Each
  book.forEach((key, value) => print('Key is $key and value is $value'));
}
// // results =>
// Key is title and value is Misson Mangal
// Key is author and value is Kuber Singh
// Key is page and value is 233

// Remove Where In Dart Map
void removeWhereInDartMap() {
  Map<String, double> mathMarks = {
    "ram": 30,
    "mark": 32,
    "harry": 88,
    "raj": 69,
    "john": 15,
  };
  mathMarks.removeWhere((key, value) => value < 32);
  print(mathMarks);
}

// //results =>
// {mark: 32.0, harry: 88.0, raj: 69.0}
