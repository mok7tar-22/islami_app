import 'package:flutter/cupertino.dart';
import 'package:islami_app/models/radio_api_manager.dart';

import '../models/radio.dart';

class RadioController with ChangeNotifier{
  List<Radios> radios = [];

  Future<List<Radios>?> getRadio() async {
    try {
      final radioAsJson = await RadioApiManager.getRadio();
      radios = radioAsJson.map((e) => Radios.fromJson(e)).toList();
      return radios;
    } catch (e) {
      print(e);
      return null;
    }
  }
}
