//3. Check whether a number is a palindrome or not

void main() {
  int num = 121; 
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
