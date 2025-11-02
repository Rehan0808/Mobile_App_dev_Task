import 'dart:io';
import 'dart:math';

void main() {
  stdout.write("Enter a number: ");
  int num = int.parse(stdin.readLineSync()!);
  int originalNum = num;
  int sum = 0;
  int digits = num.toString().length;

  while (num > 0) {
    int digit = num % 10;
    sum += pow(digit, digits).toInt();
    num ~/= 10;
  }

  if (sum == originalNum) {
    print("$originalNum is an Armstrong number");
  } else {
    print("$originalNum is not an Armstrong number");
  }
}
