import 'dart:convert';

class Person {
  String name;
  int age;

  Person(this.name, this.age);

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(json['name'], json['age']);
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
    };
  }
}

void main() {
  List<Person> persons = [
    Person('Popat', 30),
    Person('Pappu', 25),
  ];

  List<Map<String, dynamic>> jsonList = persons.map((person) => person.toJson()).toList();
  String jsonString = jsonEncode(jsonList);

  print(jsonString);
}
