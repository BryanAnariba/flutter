void main () {
  // List are similar to array
  final numbersList = [1,2,3,4,5,5,6,6,7,8,8,9,10];
  print(numbersList);
  
  // Set are similar to array or list but returns the data in {}, and eliminate duplicates values at the same 
  final Set<int>numbersSet = numbersList.toSet();
  print(numbersSet);
  final Set<String>subjects = {'Math', 'Biology', 'Chemistry', 'History', 'English'}; // Do not accept duplicate items
  print('Do not accept duplicate items $subjects');
  
  final numbersGreaterThanFive = numbersList.where((int number) {
      return number > 5;
  });
  
  print('Items from numberList that numbers greater than five (Iterable Data Type): ${numbersGreaterThanFive}');
  print('Items from numberList that numbers greater than five (Set Data Type): ${numbersGreaterThanFive.toSet()}');
}