import 'package:dio/dio.dart';
import 'package:islami_app/models/radio.dart';

class RadioApiManager {
  static Future<List<dynamic>> getRadio() async{
    String url = 'https://api.mp3quran.net/radios/radio_english.json';
    Dio dio = Dio();
    Response response=await dio.get(url);
    print(response.data["radios"]);
    return response.data["radios"];

  }
}
