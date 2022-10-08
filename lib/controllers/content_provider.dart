import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ContentController {
   static Future<String?> getQuranContant(int index) async {
     String sora = (await rootBundle
        .loadString('assets/quran_content/${index+1}.txt'));

    return sora;
  }
   static Future<String?> getHadethContant(int index) async {
     String hadeth = (await rootBundle
         .loadString('assets/hadeth_content/h${index+1}.txt'));
     return hadeth;
   }
}