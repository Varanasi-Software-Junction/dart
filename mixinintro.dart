void main() {
TestMathPack t1=TestMathPack();
  t1.use();
  MathPack mp;
  mp=t1;
  print(mp.factorial(3));
  print(mp.max(3,4));
  
}

class TestMathPack with MathPack {
  int n=90;
   void use() {
  print(   factorial(5));
   }
}
mixin MathPack {
  dynamic max(a,b)=>(a>=b)?a:b;
   int factorial(int n) {
    int f=1;
     for(int i=1;i<=n;i++)
       f=f*i;
     return f;
   }
}

