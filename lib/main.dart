import 'package:flutter/material.dart';
import 'package:islami_app/controllers/main_screen_controller.dart';
import 'package:islami_app/controllers/radio_controller.dart';
import 'package:islami_app/controllers/settings_controller.dart';
import 'package:islami_app/utils/my_theme_data%20.dart';
import 'package:islami_app/utils/preferences.dart';
import 'package:islami_app/views/screens/hadeth/hadeth_content_screen.dart';
import 'package:islami_app/views/screens/main_screen.dart';
import 'package:islami_app/views/screens/quran/sora_content_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Preferences.init();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SettingsController()),
        ChangeNotifierProvider(create: (context) => MainScreenController()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme:MyThemeData.lightTheme ,
      darkTheme:MyThemeData.darkTheme,
      locale: Locale(Provider.of<SettingsController>(context).locale),
      themeMode: Provider.of<SettingsController>(context).mode,
      routes: {
        MainScreen.routeName: (buildContext) => MainScreen(),
        SoraContentScreen.routeName: (buildContext) => SoraContentScreen(),
        HadethContentScreen.routeName: (buildContext) => HadethContentScreen(),
      },
      initialRoute: MainScreen.routeName,
    );
  }
}
