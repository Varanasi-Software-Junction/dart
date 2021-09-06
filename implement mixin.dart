void main() {

  Rectangle r=Rectangle(length:3,breadth:2);
  print(r.area());
  
}
class Rectangle implements Figure {
  double length,breadth;
  Rectangle({required this.length,required this.breadth});
  
  double area()
  {
    return length*breadth;
  }
  double perimeter()
  {
    return 2 * (length + breadth);
  }
  
}
 mixin  Figure
{
  double area();
  double perimeter();
}

     



