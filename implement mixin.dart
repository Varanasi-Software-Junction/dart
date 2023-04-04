import 'dart:math';

void main() {
  Rectangle r = Rectangle(length: 4, breadth: 3);
  print(r.area());
  print(r.diagonal());
  print(r.perimeter());
  print(r);
  Figure f = Rectangle(length: 4, breadth: 3);
  print(f.area());
  print(f.perimeter());
  print(f);
}

class Rectangle implements Figure {
  double length, breadth;
  Rectangle({required this.length, required this.breadth});
  @override
  double area() {
    return length * breadth;
  }

  @override
  double perimeter() {
    return 2 * (length + breadth);
  }

  double diagonal() {
    return sqrt(length * length + breadth * breadth);
  }

  String toString() {
    return "Rectangle($length,$breadth)";
  }
}

mixin Figure {
  double area();
  double perimeter();
}
