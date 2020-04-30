import 'package:http/http.dart';
import 'dart:convert';

class Networking {
  final String Url;
  Networking(this.Url);

  Future getWeatherData() async {
    Response response = await get(Url);
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      print(response.statusCode);
    }
  }
}
