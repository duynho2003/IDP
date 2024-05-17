import 'employee.dart';

void main(){
  Employee employeeOne = Employee();
  Employee employeeTwo = Employee.withAll("1", "ABC", "590");
  Employee employeeThree = Employee.autoId("Binh", "590");

  employeeOne.inputInfo();
  employeeOne.printInfo();
  employeeTwo.printInfo();
  employeeThree.printInfo();

}