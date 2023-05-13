class Person {
  String name;
  int age;

  Person(this.name, this.age);

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(json['name'], json['age']);
  }
}

void main() {
  String jsonStr = '{"name": "John", "age": 30}';
  
  Map<String, dynamic> json = jsonDecode(jsonStr);
  Person person = Person.fromJson(json);
  
  print(person.name); // Output: John
  print(person.age); // Output: 30
}
