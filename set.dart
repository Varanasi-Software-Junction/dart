void main() {
Set<String> set1= Set();
Set<String> set2= Set();
  set1.add("Sun");
  set1.add("Mon");
  set1.add("Tue");
  set2.add("Tue");
  set2.add("Wed");
  set2.add("Thu");
  Set<String> union=set1.union(set2);
  print(union);
  Set<String> diff=set1.difference(set2);
  print(diff);
  Set<String> intersect=set1.intersection(set2);
  print(intersect);
 List<String> lst=set1.toList();
  print(lst);
}
