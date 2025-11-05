// Classwork
// 1. Create a list of names and print all names using list.
// 2. Create a set of fruits and print all fruits using loop.
// 3. Create a program that reads list of expenses amount using user input and print total.
// 4. Create an empty list of type string called days. Use the add method to add names of 7 days and print all days.
// 5. Add your 7 friend names to the list. Use where to find a name that starts with alphabet a.
// 6. Create a map with name, address, age, country keys and store values to it. Update country name to other country and print all keys and values.
// 7. Create a map with name, phone keys and store some values to it. Use where to find all keys that have length 4.
// 8. Create a simple to-do application that allows user to add, remove, and view their task.

import 'dart:io';

void main(){
  // Create a list of names and print all names using list.
  void listNames(){
    List<String> arr = ["prajwal","rehan","sushant","nishan","sameer"];
    print("names :$arr");
  }


  // Create a set of fruits and print all fruits using loop.
  void fruitsNames(){
    List<String> arr = ["apple","mango","banana","papaya","pineapple"];
    for (var i = 0; i < arr.length; i++) {
      print(arr[i]);
    }
  }
  fruitsNames();

  // Create a program that reads list of expenses amount using user input and print total.
  void userExpenses() {
    List<double> expenses = [];
    print("Enter your expenses (type 'done' to stop):");

    while (true) {
      String input = stdin.readLineSync()!;
      if (input.toLowerCase() == 'done') break;
      expenses.add(double.parse(input));
    }

    double total = expenses.reduce((a, b) => a + b);
    print("Total expenses: $total");
  }

  // Create an empty list of type string called days. Use the add method to add names of 7 days and print all days.
  void printDays() {
  List<String> days = [];
  days.addAll(['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']);
  print("Days of the week: $days");
  }

  // Add your 7 friend names to the list. Use where to find a name that starts with alphabet a.
  void nameStartingWithA() {
  List<String> friends = ['Aashish', 'Bikash', 'Anita', 'Deepak', 'Arjun', 'Suman', 'Amrita'];
  
  var namesStartingWithA = friends.where((name) => name.toLowerCase().startsWith('a'));
  print("Friends whose names start with 'A': $namesStartingWithA");
  }

  // 6. Create a map with name, address, age, country keys and store values to it. Update country name to other country and print all keys and values.
  void createMap() {
  Map<String, dynamic> person = {
    'name': 'Manish',
    'address': 'Kathmandu',
    'age': 21,
    'country': 'Nepal'
  };

  person['country'] = 'Japan'; // update country

  person.forEach((key, value) {
    print("$key: $value");
  });
  }

  // 7. Create a map with name, phone keys and store some values to it. Use where to find all keys that have length 4.
  void mapWithName() {
  Map<String, String> contacts = {
    'john': '9812345678',
    'alex': '9801234567',
    'sam': '9841122334',
    'mike': '9823456789'
  };

  var keysWithLength4 = contacts.keys.where((key) => key.length == 4);
  print("Keys with length 4: $keysWithLength4");
  }

  // 8. Create a simple to-do application that allows user to add, remove, and view their task.

  void toDoApp() {
  List<String> tasks = [];
  while (true) {
    print("\n--- To-Do App ---");
    print("1. Add Task");
    print("2. Remove Task");
    print("3. View Tasks");
    print("4. Exit");
    stdout.write("Enter your choice: ");
    String choice = stdin.readLineSync()!;

    if (choice == '1') {
      stdout.write("Enter task: ");
      String task = stdin.readLineSync()!;
      tasks.add(task);
      print("Task added!");
    } 
    else if (choice == '2') {
      stdout.write("Enter task to remove: ");
      String task = stdin.readLineSync()!;
      if (tasks.remove(task)) {
        print("Task removed!");
      } else {
        print("Task not found!");
      }
    } 
    else if (choice == '3') {
      print("Your tasks:");
      for (var t in tasks) {
        print("- $t");
      }
    } 
    else if (choice == '4') {
      print("Goodbye!");
      break;
    } 
    else {
      print("Invalid choice! Try again.");
    }
  }
  }






}