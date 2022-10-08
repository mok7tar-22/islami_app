import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'hadeth_content_screen.dart';

class HadethScreen extends StatelessWidget {
  const HadethScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: Center(child: Image.asset("assets/images/hadeth.png"))),
        Expanded(
            flex: 3,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(
                              color: Theme.of(context).colorScheme.secondary,
                              width: 3),
                          bottom: BorderSide(
                              color: Theme.of(context).colorScheme.secondary,
                              width: 3))),
                  alignment: Alignment.center,
                  child: Text(
                    AppLocalizations.of(context)!.hadeths,
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                Expanded(
                    child: ListView.builder(
                  itemCount: 50,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                     Navigator.pushNamed(
                             context, HadethContentScreen.routeName,
                             arguments: index);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "${AppLocalizations.of(context)!.hadeth} ${index + 1}",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ),
                    );
                  },
                ))
              ],
            ))
      ],
    );
  }
}
