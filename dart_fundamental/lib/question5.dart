//5. Check whether a string is palindrome or not

import 'dart:io';

void main() {
  stdout.write("Enter a string: ");
  String str = stdin.readLineSync()!;
  String reversed = str.split('').reversed.join('');

  if (str == reversed) {
    print("'$str' is a Palindrome string");
  } else {
    print("'$str' is not a Palindrome string");
  }
}
