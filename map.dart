void main() {
Map<int,String> days=Map();
  print(days);
  days[0]="Sun";
  days[1]="Mon";
  days[2]="Tue";
  days[3]="Wed";
  print(days);
  print(days.keys);
  for(int n in days.keys)
    print("[$n]=${days[n]}");
  List<int> keylst=days.keys.toList();
  List<String> valuelst=days.values.toList();
  print(keylst);
  print(valuelst);
}
