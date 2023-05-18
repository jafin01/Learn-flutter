import 'school.dart';

class Person {
  String? name;
  int? age;
  String? _place; // private variable

  // constructor
  Person(this.name, this.age);

  // named constructor
  Person.ageAbove50(this.name, this.age);
}

void main(List<String> arguments) {
  final person = Person('Akash Duplicate', 28);
  print(person.name);

  final person2 = Person.ageAbove50("AkashDeep Original", 56);
  print(person2.name);

  // final school = School(_name, _address, _principal, _students, _teachers) // not possible as they are private variables.
  final school = School('DPS', 'Delhi', 'Mr. Sharma', 1000, 50);
  print(school.getSchool); // possible using getter

  // const String name = 'Jafin'; // cannot be changed
  // final String myName; // can assign the value later
  // myName = 'Jafin';
  // print(name);
  // print(myName);
}
