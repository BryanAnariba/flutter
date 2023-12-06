String welcomePerson () {
  return 'Hello Bryan!';
}

int addTwoNumbers (int numOne, int numTwo) {
  return numOne + numTwo;
}

// Look at this type of to pass values in the arguments IRS is optional but you can spend value if you want....
String getEmployeeSalary ({required employeeName, required employeeSalary, double ISR = 0.15}) {
  final int totalSalary = employeeSalary - (employeeSalary * ISR);
  return 'The salary of $employeeName is L.$totalSalary';
}

int addTwoNumbersSecondParamIsOptional(int numOne, [int numTwo = 0]) => numOne + numTwo;

void main () {
  print(welcomePerson());
  
  int result = addTwoNumbers(5,6);
  print('5+6=$result');
  
  result = addTwoNumbersSecondParamIsOptional(5);
  print('5+0=$result');
  
  // This types of function its necesary to learn BASA, so what? practice...
  final String results = getEmployeeSalary(employeeName: 'Ariel Sanchez', employeeSalary: 15000);
  print('${results}');
}