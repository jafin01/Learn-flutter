void main() {
  printSum(1, 2); // functions with argument without return values

  print(getSum(1, 2)); // function with argument with return values

  reqParam(
      firstNumber: 1,
      secondNumber: 2,
      thirdNumber:
          54); // function with named paramters (optional parameter, required parameter, default parameter)

  sumFunction(10, 20, printSum); // function as parameter

  // Future Functions
  futureSum(10, 15); // function with future

  // Nested future functions
  getCalculations(10, 20);
}

// print sum of 2 numbers
void printSum(int num1, int num2) {
  print(num1 + num2);
}

int getSum(int num1, int num2) {
  return num1 + num2;
}

void reqParam(
    {required firstNumber, required secondNumber, int? thirdNumber = 0}) {
  print(firstNumber + secondNumber);
}

void sumFunction(int num1, int num2, void Function(int, int) customSum) {
  customSum(num1, num2);
}

Future<int> futureSum(int num1, int num2) async {
  return num1 + num2;
}

Future<int> multiplyByTwo(int num) async {
  return num * 2;
}

Future<void> getCalculations(int num1, int num2) async {
  var sum = await futureSum(num1, num2);
  var twiceTheSum = await multiplyByTwo(sum);
  print(twiceTheSum);
}
