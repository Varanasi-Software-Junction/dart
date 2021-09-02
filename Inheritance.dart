void main() {
Employee e=Employee(name:"Sachin",address:"Mumbai",age:50,
                    post: "Batsman",salary:1000 );
  print(e);
}
class Person{
  String name,address;
  int age;
  Person({required this.name,required this.address,required this.age});
  @override
  String toString()
  {
    return "Person($name)";
  }
}
class Employee extends Person
{
  String post;
  int salary;
  Employee({required name,required address,required age,required this.post,required this.salary})
    :super(name:name,age:age,address:address);
  
    @override
  String toString()
  {
    return  " Employee(${super.toString()}, $post)";
  }
}
