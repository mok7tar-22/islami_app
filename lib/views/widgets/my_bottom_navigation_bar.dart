import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../controllers/main_screen_controller.dart';
import '../../utils/my_theme_data .dart';

class MyBottomNavigatorBar extends StatelessWidget {
  const MyBottomNavigatorBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (value) {
        Provider.of<MainScreenController>(context, listen: false)
            .ChangeScreen(value);
      },
      elevation: 0,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      //  selectedItemColor: Theme.of(context).primaryColor,
      //unselectedItemColor: Colors.grey,
      currentIndex: Provider.of<MainScreenController>(context).currentScreen,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/icons/quran_ic.png'),
            ),
            label: AppLocalizations.of(context)!.quran),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('assets/icons/hadeth_ic.png'),
          ),
          label: AppLocalizations.of(context)!.hadeth,
        ),
        BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/icons/sebha_ic.png'),
            ),
            label: AppLocalizations.of(context)!.tasbeh),
        BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/icons/radio_ic.png'),
            ),
            label: AppLocalizations.of(context)!.radio),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,

           //   size: 30,
            ),
            label: AppLocalizations.of(context)!.settings),




      ],
    );
  }
}
