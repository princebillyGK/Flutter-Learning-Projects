import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location; //location name for the ui
  String time; //the time in that location
  String url; //location url for api and point
  bool isDayTime;

  WorldTime({this.url, this.location});

  Future<void> getTime() async{
    try {
      Response response = await get(
          'http://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(response.body);

      String dateTime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);

      DateTime now = DateTime.parse(dateTime);
      now = now.add(Duration(hours: int.parse(offset)));
      isDayTime = now.hour > 6 && now.hour < 15 ? true : false;
      time = DateFormat.jm().format(now);
      print(time);
    } catch (e) {
      print("Error is $e");
      time = "Could not get the time. Error";
    }
  }
}
//WorldTime instance = WorldTime(location: 'Berlin', flag: 'Germany.png', url: 'Europe/Berlin');
