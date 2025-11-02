//3. Check whether a number is a palindrome or not

import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  int num = int.parse(stdin.readLineSync()!);
  int originalNum = num;
  int reversed = 0;

  while (num > 0) {
    int digit = num % 10;
    reversed = reversed * 10 + digit;
    num ~/= 10;
  }

  if (originalNum == reversed) {
    print("$originalNum is a Palindrome number");
  } else {
    print("$originalNum is not a Palindrome number");
  }
}
