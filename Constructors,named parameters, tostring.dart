void main() {
  Book b = Book("The Recursion Sutras", "Recursion", 299);
  print(b);
  simpleFunctionwithRequiredParameters(1, 2);
  functionWithDefaultValueNamedParameters(n2: 7, n1: 2);
  functionWithDefaultValueNamedParameters(n2: 7);

  functionWithOneRequiredParameter(n2: 7);
  Person p = Person(
    name: "Sachin",
  );
  print(p);
}

enum Operation { add, sub }

class Person {
  String name;
  int age;
  Person({required this.name, this.age = 10});
  @override
  String toString() {
    return "Person (Name = $name, Age = $age) ";
  }
}

void functionWithOneRequiredParameter({int n1 = 0, required int n2}) {
  print("$n1 + $n2 =${n1 + n2}");
}

void functionWithDefaultValueNamedParameters({int n1 = 0, int n2 = 0}) {
  print("$n1 + $n2 = ${n1 + n2}");
}

void simpleFunctionwithRequiredParameters(int n1, int n2) {
  print("$n1 + $n2 = ${n1 + n2}");
}

class Book {
  String bookname = "", subject;
  int price;
  Book(this.bookname, this.subject, this.price);
  @override
  String toString() {
    return "Book (Name = $bookname, Subject = $subject, Price = $price)";
  }
}
