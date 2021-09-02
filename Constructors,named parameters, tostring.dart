void main() {
 Book b= Book("Basi C","C",100);
  print(b);
  add(1,2);
  namedadd(n2:7,n1:2);
  namedadd(n2:7);
  requireddadd(n2:7);
  Person p=Person(name:"Sachin",);
  print(p);
}
enum Operation {
  add,
  sub
}
class Person
{
  String name;
  int age;
  Person({required this.name,this.age=10});
   @override
  String toString()
  {
    return "Name = $name, Age = ${this.age}";
  }
}
void requireddadd({int n1=0,required int n2})
{
  print("$n1 + $n2 =${n1 + n2}");
}

void namedadd({int n1=0, int n2=0})
{
  print("$n1 + $n2 =${n1 + n2}");
}
void add(int n1,int n2)
{
  print("$n1 + $n2 =${n1 + n2}");
}
class Book{
  String bookname="",subject;
  int price;
  Book(this.bookname,this.subject,this.price);
  @override
  String toString()
  {
    return "Book" + bookname;
  }
}
