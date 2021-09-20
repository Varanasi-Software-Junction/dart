import 'package:http/http.dart' as http;
import 'dart:convert';

void main()async {
   String apikey="4a1f8a61b74546825af1e0be106e797c";
  String url="https://api.openweathermap.org/data/2.5/forecast?q=Varanasi&appid=$apikey";
  
  http.Response response;
    Uri uri=Uri.parse(url);
    response = await http.get(uri);
   dynamic data=jsonDecode( response.body);
   print(data);
  print(data['list'][0]['main']['temp']);
}

