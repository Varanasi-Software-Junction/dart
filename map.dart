void main() {
  //https://api.dart.dev/stable/2.17.3/dart-core/Map-class.html
  Map<int, String> days = <int, String>{};
  Map<int, String> dayswithdata = <int, String>{
    0: "Sun",
    1: "Mon",
    2: "Tue",
    3: "Wed",
    4: "Thu",
    5: "Fri",
    6: "Sat"
  };
  print("Days with data $dayswithdata");
  print(days);
  days[0] = "Sun";
  days[1] = "Mon";
  days[2] = "Tue";
  days[3] = "Wed";
  days[4] = "Thu";
  days[5] = "Fri";
  days[6] = "Sat";
  print("Full List $days");
  print("Keys ${days.keys}");
  for (int n in days.keys) {
    print("[$n]=${days[n]}");
  }
  List<int> keylst = days.keys.toList();
  List<String> valuelst = days.values.toList();
  print("Keys as list $keylst");
  print("Values as list $valuelst");
  dayswithdata.forEach((dayno, dayname) {
    print("Day No $dayno = $dayname");
  });

  print("dayswithdata.containsKey(1)  ${dayswithdata.containsKey(1)}");
  print("dayswithdata.containsKey(10)  ${dayswithdata.containsKey(10)}");
  print("dayswithdata.containsValue(1)  ${dayswithdata.containsValue("Thu")}");
  print(
      "dayswithdata.containsValue(1)  ${dayswithdata.containsValue("Yesterday")}");
  dayswithdata.remove(0);
  print("Days with data after 0 removal $dayswithdata");
  dayswithdata.removeWhere((dayno, dayname) => dayname.startsWith("T"));
  print("Days with data after removing days that start with T $dayswithdata");
}
