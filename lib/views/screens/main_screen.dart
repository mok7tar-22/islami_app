import 'package:flutter/material.dart';
import 'package:islami_app/controllers/settings_controller.dart';
import 'package:islami_app/views/screens/settings_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../controllers/main_screen_controller.dart';

import '../../utils/my_theme_data .dart';
import '../widgets/my_bottom_navigation_bar.dart';
class MainScreen extends StatelessWidget {
  static const String routeName='MainScreen ';
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var image = Provider.of<SettingsController>(context).mode;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  "assets/images/${image == ThemeMode.light ? 'bg3' : 'bg_dark'}.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            AppLocalizations.of(context)!.app_title,
            style: Theme.of(context).primaryTextTheme.headline2,
          ),
        ),
        body: Provider.of<MainScreenController>(context)
            .screens[Provider.of<MainScreenController>(context).currentScreen],
        bottomNavigationBar: MyBottomNavigatorBar(),
      ),
    );
  }
}
