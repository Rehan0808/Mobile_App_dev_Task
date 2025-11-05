//Create a program that reads list of expenses amount using user input and print total
import 'dart:io';
void main(){
  List<int> expenses = [];
  print("Enter the number of expenses :");
  int num = int.parse(stdin.readLineSync()!);

      for (int i = 0; i < num; i++) {
        print("Enter expense${i+1}:");
        int expense = int.parse(stdin.readLineSync()!);
        expenses.add(expense);   
      }

       int total = expenses.reduce((a, b) => a + b);
        print("Total expenses: $total");
}