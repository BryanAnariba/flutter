void main () {
  final Employee empOne = Employee(
    employeeName: 'Bryan Ariel Sanchez Anariba', 
    employeeAge: 26, 
    employeeRole: 'Systems Enginner', 
    employeeEmail: 'basa@gmail.com',
    salaryWithOutIRS: 1000
  );
  print(empOne);
}

class Employee {
  // Private Attributes
  String _employeeName;
  int _employeeAge;
  String _employeeRole;
  String _employeeEmail;
  double _salaryWithOutIRS;
  double _employeeIRS;
  
  
  // Constructor
  Employee({
    required String employeeName,
    required int employeeAge,
    required String employeeRole,
    required String employeeEmail,
    required double salaryWithOutIRS
  })
    :
    _employeeName = employeeName,
    _employeeAge = employeeAge,
    _employeeRole = employeeRole,
    _employeeEmail = employeeEmail,
    _salaryWithOutIRS = salaryWithOutIRS,
    _employeeIRS = 0.15;
  
  // Override methods
  @override
  String toString () {
    return '{ employeeName: $_employeeName, age: $_employeeAge, employeeRole: $_employeeRole, employeeEmail: $_employeeEmail }';
  }
}