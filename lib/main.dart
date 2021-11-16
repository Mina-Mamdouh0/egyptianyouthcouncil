import 'package:egyptianyouthcouncil/module/splashscreen.dart';
import 'package:egyptianyouthcouncil/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

int? flag;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    flag = prefs.getInt('');
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: Consumer<ThemeNotifier>(
          builder: (context, ThemeNotifier notifier, child) {
            return MaterialApp(
              title: 'مجلس الشباب المصري',

              debugShowCheckedModeBanner: false,
              theme: notifier.lightTheme! ? lightTheme : darkTheme,
              home: SplashScreen(),

            );
          }),
    );
  }
}
