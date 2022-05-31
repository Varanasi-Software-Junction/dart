void main() async {
  dynamic retvalue = asyncFunction();
  print("Value = $retvalue, Type= ${retvalue.runtimeType}");
  retvalue = await asyncFunction();
  print("Value = $retvalue, Type= ${retvalue.runtimeType}");
}

Future asyncFunction() async {
  await Future.delayed(Duration(seconds: 5));
  return 'Return from Async Function';
}
