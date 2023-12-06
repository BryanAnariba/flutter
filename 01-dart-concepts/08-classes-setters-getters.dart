void main () {
  final Employee empOne = Employee(
    employeeName: 'Bryan Ariel Sanchez Anariba', 
    employeeAge: 26, 
    employeeRole: 'Systems Enginner', 
    employeeEmail: 'basa@gmail.com',
    salaryWithOutIRS: 1000 // if you want to see the assert change 1000 by -1
  );
  
  // USING SETTER
  empOne.salaryWithOutIRS = 1500.00;
  
  // USING GETTER
  print('Net Salary: ${empOne.netSalary}');

  // Using toString method
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
    assert(salaryWithOutIRS >= 0, 'The employee salary must be greater or equal than zero!'),
    _employeeName = employeeName,
    _employeeAge = employeeAge,
    _employeeRole = employeeRole,
    _employeeEmail = employeeEmail,
    _salaryWithOutIRS = salaryWithOutIRS,
    _employeeIRS = 0.15;
  
  // Setters
  set salaryWithOutIRS(double salaryWithOutIRS) {
    if (salaryWithOutIRS < 0) throw 'The employee salary must be greater than zero!';
    _salaryWithOutIRS = salaryWithOutIRS;
  }
  
  // Getters
  double get netSalary {
    return (_salaryWithOutIRS - (_salaryWithOutIRS * _employeeIRS));
  }
  
  // Override methods
  @override
  String toString () {
    return '{ employeeName: $_employeeName, age: $_employeeAge, employeeRole: $_employeeRole, employeeEmail: $_employeeEmail, salaryWithOutIRS: $_salaryWithOutIRS }';
  }
}