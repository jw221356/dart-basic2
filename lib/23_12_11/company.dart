import 'dart:io';

class Employee {
  final String name;
  final int age;

  Employee(this.name, this.age);

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
    };
  }

  Employee.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        age = json['age'];
}

class Department {
  final String name;
  final Employee leader;

  Department(this.name, this.leader);

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'leader': leader.toJson(),
    };
  }

  Department.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        leader = json['leader'];
}

void main() {
  Department department = Department('총무부', Employee('홍길동', 41));

  print(department.leader.toJson());

  print(department.toJson());

  final myFile = File('company.txt');
  myFile.writeAsStringSync(department.toJson().toString());
}