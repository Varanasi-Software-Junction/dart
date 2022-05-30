void main() {
  var varVariable = "10";
  print("Var variable values $varVariable");
  print("Var variable type ${varVariable.runtimeType}");
  //varVariable=10; type cannot be changed
  dynamic dynamicvariable = "10";
  print("Dynamic variable value $dynamicvariable");
  print("Dynamic variable type ${dynamicvariable.runtimeType}");
  dynamicvariable = 10; //Type can be changed
  print("Dynamic variable value $dynamicvariable");
  print("Dynamic variable type ${dynamicvariable.runtimeType}");
}
