void main () {
  final String employeeCompleteName = 'Bryan Ariel Gomez Gamez'.toUpperCase();
  final int employeeAge = 28;
  final bool isEmployeeActive = true;
  final List<String> employeeRoles = ['Frontend Developer', 'Backend Developer', 'Analyst', 'Tester'];
  final employeeCertificates = <String>['UNAH Systems Enginner', 'First Module Of CISCO'];
  dynamic employeeHobbies = ['Read', 'Listening To Music', 'Walking at the Park', 'Play games in mu bedroom'];
  
  print('''
    Employee $employeeCompleteName Data:
    Age: $employeeAge
    Is Active: $isEmployeeActive
    Roles At the Company: $employeeRoles
    Certifications: $employeeCertificates
    Hobbies: $employeeHobbies
  ''');
  
}