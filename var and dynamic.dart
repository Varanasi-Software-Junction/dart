void main() {
var x1="10";
  print(x1);
  print(x1.runtimeType);
  //x1=10; type cannot be changed
  dynamic x2="10";
  print(x2);
  print(x2.runtimeType);
  x2=10;//Type can be changed
  print(x2);
  print(x2.runtimeType);
  
}

     



