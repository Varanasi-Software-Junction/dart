void main() {
 List<String> lst=["Sun","Mon"];
  lst.add("Tue");
  lst.add("Wed");
  print(lst);
  int n=lst.length;
  for(int i=0;i<=n-1;i++)
    print(lst[i]);
  for(String day in lst)
    print(day);
  
}
