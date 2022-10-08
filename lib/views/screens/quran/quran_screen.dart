
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/models/quran_data.dart';
import 'package:islami_app/models/radio_api_manager.dart';
import 'package:islami_app/views/screens/quran/sora_content_screen.dart';
import 'package:islami_app/views/widgets/sora_list.dart';

class QuranScreen extends StatelessWidget {
  const QuranScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            child: Center(child: Image.asset("assets/images/quran_logo.png"))),
        SizedBox(
          height: 8,
        ),
        Expanded(
            flex: 3,
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border(
                                left: BorderSide(
                                    color:Theme.of(context).colorScheme.secondary,
                                    width: 3
                                ),
                                right: BorderSide(
                                    color:
                                    Theme.of(context).colorScheme.secondary,
                                    width: 3),
                                top: BorderSide(
                                    color:
                                    Theme.of(context).colorScheme.secondary,
                                    width: 3),
                                bottom: BorderSide(
                                    color:
                                    Theme.of(context).colorScheme.secondary,
                                    width: 3))),
                        alignment: Alignment.center,
                        child: Text(
                          AppLocalizations.of(context)!.surah_name,
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border(

                                top: BorderSide(
                                    color:
                                    Theme.of(context).colorScheme.secondary,
                                    width: 3),
                                bottom: BorderSide(
                                    color:
                                    Theme.of(context).colorScheme.secondary,
                                    width: 3))),
                        alignment: Alignment.center,
                        child: Text(
                          AppLocalizations.of(context)!.number_of_verses,
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                    ),
                  ],
                ),

                Expanded(
                  child: ListView.builder(
                    itemCount: QuranData.quranNames.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: () {
                             Navigator.pushNamed(
                                 context, SoraContentScreen.routeName,
                                 arguments: index);
                          },
                          child: SoraList(index: index));
                    },
                  ),
                )
              ],
            ))
      ],
    );
  }
}
