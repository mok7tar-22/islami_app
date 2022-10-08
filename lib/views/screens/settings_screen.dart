import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../controllers/settings_controller.dart';
import '../widgets/settings_label.dart';
import '../widgets/settings_option.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SettingsLabel(  AppLocalizations.of(context)!.language),
          SettingsOption(
              opt1: "English",
              opt2: "عربي",
              value1: "en",
              value2: "ar",
              selectedValue: Provider.of<SettingsController>(context).locale,
              onChanged: (local) {
                Provider.of<SettingsController>(context, listen: false).changeLocale(local);
              }),
          SettingsLabel(  AppLocalizations.of(context)!.theme),
          SettingsOption(
              opt1:   AppLocalizations.of(context)!.light,
              opt2:   AppLocalizations.of(context)!.dark,
              value1: ThemeMode.light,
              value2: ThemeMode.dark,
              selectedValue: Provider.of<SettingsController>(context).mode,
              onChanged: (mode) {
                Provider.of<SettingsController>(context,listen: false).changeMode(mode);
              })
        ],
      ),
    );
  }
}
