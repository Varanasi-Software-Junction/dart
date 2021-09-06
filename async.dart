void main() async {
print(f1());
 print(await f1());
  
}

Future  f1()async
{
await Future.delayed( Duration(seconds: 5));
  return 10;
}

     



