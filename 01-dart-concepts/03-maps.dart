void main () {
  // The maps are similate to JSON in Javascript, it's a key and value pair
  final Map<String, dynamic> employeeInfo = {
    'employeeCompleteName': 'Bryan Ariel Gomez Gamez',
    'employeeAge': 22,
    'employeeIsActive': true,
    'employeeRoles': <String>['Frontend Developer', 'Backend Developer', 'Tester'],
    'employeeCertifications': <String>['ORACLE', 'CISCO', 'ISO 27001'],
    'employeeHobbies': <String>['Play Warzone', 'Read', 'Listening to Music', 'Sleep', 'Drink Coffee/Coca Cola'],
    'employeeImages': <int, String>{
      1: '/storage/employees-img/avatar-1.png',
      2: '/storage/employees-img/avatar-2.png',
    },
  };
  
  
  print(employeeInfo['employeeCompleteName']);
  print(employeeInfo['employeeAge']);
  print(employeeInfo['employeeIsActive'] ? 'Yes' : 'No');
  print(employeeInfo['employeeRoles']);
  print(employeeInfo['employeeCertifications']);
  print(employeeInfo['employeeHobbies']);
  print(employeeInfo['employeeImages'][2]);
  print(employeeInfo['employeeImages'][1]);
}