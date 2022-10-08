import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TasbeehScreen extends StatefulWidget {
  TasbeehScreen({Key? key}) : super(key: key);

  @override
  State<TasbeehScreen> createState() => _TasbeehScreenState();
}

class _TasbeehScreenState extends State<TasbeehScreen> {
  int index = 0, counter = 0;
  double angle = 0;

  @override
  Widget build(BuildContext context) {
    List tasbheeh = [
      AppLocalizations.of(context)!.subhan_allah,
      AppLocalizations.of(context)!.alhamd_lilhi,
      AppLocalizations.of(context)!.la_alih_alaAllah,
      AppLocalizations.of(context)!.allah_akbiri
    ];
    return Center(
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              Container(
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.height * 0.09),
                  child: Image.asset("assets/images/head of seb7a.png")),
              Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.09),
                  child: Transform.rotate(
                      angle: angle,
                      child: Image.asset("assets/images/seb7a.png"))),
            ],
          ),
          Text(
            AppLocalizations.of(context)!.the_number_of_tasbeehs,
            style: TextStyle(fontSize: 25),
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).primaryColor),
            child: Text(
              " $counter",
              style: TextStyle(fontSize: 25),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).colorScheme.secondary),
              child: TextButton(
                onPressed: () {
                  counter++;
                  angle += 12;
                  if (counter % 32 == 0) {
                    if (index == tasbheeh.length - 1) {
                      index = -1;
                    }
                    index++;
                  }

                  setState(() {});
                },
                child: Text(
                  tasbheeh[index],
                  style: Theme.of(context).primaryTextTheme.headline3,
                ),
              ))
        ],
      ),
    );
  }
}
