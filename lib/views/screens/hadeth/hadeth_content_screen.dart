import 'package:flutter/material.dart';
import 'package:islami_app/controllers/content_provider.dart';
import 'package:islami_app/controllers/settings_controller.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class HadethContentScreen extends StatelessWidget {

  static const String routeName='hadethContent';
  const HadethContentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var image = Provider.of<SettingsController>(context).mode;
    int index=ModalRoute.of(context)!.settings.arguments as int;
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    "assets/images/${image == ThemeMode.light ? 'bg3' : 'bg_dark'}.png"),
                fit: BoxFit.fill)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.app_title,
            ),
          ),
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
            margin: EdgeInsets.symmetric(vertical: 10,horizontal: 20).add(EdgeInsets.only(bottom: 20)),
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Theme.of(context).colorScheme.primaryVariant.withOpacity(0.7),
                    Theme.of(context).colorScheme.primaryVariant,
                  ],
                ),
                borderRadius: BorderRadius.circular(20),
                color: Colors.white
            ),
            child: Column(
              children: [
                Text("الحديث ${index+1}",style: Theme.of(context).primaryTextTheme.headline2,),
                Divider(
                  color: Color.fromRGBO(183, 147, 95, 1),
                  thickness: 1,
                ),
                Expanded(child: SingleChildScrollView(
                  child: FutureBuilder<String?>(
                    future: ContentController.getHadethContant(index),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState ==
                          ConnectionState.waiting) {
                        return const Center(
                            child: CircularProgressIndicator.adaptive());
                      }
                      if (snapshot.data == null) {
                        return const Center(
                            child: Text(
                                'Error has occurred please try again later.'));
                      } else {
                        return SingleChildScrollView(
                          child: Text(snapshot.data!,textDirection: TextDirection.rtl,style: TextStyle(fontSize: 20),),
                        );
                      }
                    },
                  ),
                ))


              ],
            ),
          ),
        ));
  }
}
