void main () {
  final Employee empOne = Employee(
    employeeName: 'Bryan Ariel Sanchez Anariba', 
    employeeAge: 26, 
    employeeRole: 'Systems Enginner', 
    employeeEmail: 'basa@gmail.com',
    salaryWithOutIRS: 1000
  );
  print('Employee One Call With Normal Constructor: ${empOne}');
  
  final Map<String, dynamic> employeeJson = {
    'employeeName': 'Erick Jimenez',
    'employeeAge': 20,
    'employeeRole': 'Web Dev',
    'employeeEmail': 'erick@gmail.com',
    'salaryWithOutIRS': 50000,
    '_employeeIRS': 0.15
  };
  final Employee empTwo = Employee.fromJSON(employeeJson);
  print('Employee Two Call With Name Constructor: ${empTwo}');
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
  
  // Constructor By Name
  Employee.fromJSON(Map<String, dynamic>json)
    :
      _employeeName = json['employeeName'] ?? 'Not Name Found',
      _employeeAge = json['employeeAge'] ?? 0,
      _employeeRole = json['employeeRole'] ?? 'EXTERNAL',
      _employeeEmail = json['employeeEmail'] ?? 'Not Email Found',
      _salaryWithOutIRS = json['salaryWithOutIRS'] ?? 1000,
      _employeeIRS = json['_employeeIRS'] ?? 0.15;
  
  // Override methods
  @override
  String toString () {
    return '{ employeeName: $_employeeName, age: $_employeeAge, employeeRole: $_employeeRole, employeeEmail: $_employeeEmail }';
  }
}