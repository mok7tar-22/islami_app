import 'package:flutter/material.dart';

import 'package:islami_app/controllers/settings_controller.dart';

import 'package:provider/provider.dart';

import '../../models/quran_data.dart';

class SoraList extends StatelessWidget {
  int index;
  SoraList({Key? key,required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lan = Provider.of<SettingsController>(context).locale;
    return Row(
      children: [
        Expanded(child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border:Border(
              right: BorderSide(
                  color:Theme.of(context).colorScheme.secondary,
                  width: 3
              ),
              left: BorderSide(
                  color:Theme.of(context).colorScheme.secondary,
                  width: 3
              ),


            ),
          ),
          child: Text(lan=='en'?QuranData.quranNamesEnglish[index]:QuranData.quranNames[index],
            style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
          ),

        )),
        Expanded(child: Text(lan=='en'?QuranData.ayatNumbersEnglish[index]:QuranData.ayatNumbers[index], style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),textAlign: TextAlign.center,))
      ],
    );
  }
}
