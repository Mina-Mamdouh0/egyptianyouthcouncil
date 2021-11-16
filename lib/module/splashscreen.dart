import 'dart:async';

import "package:delayed_display/delayed_display.dart";
import 'package:egyptianyouthcouncil/module/firstscreen.dart';
import 'package:egyptianyouthcouncil/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final Duration initialDelay = Duration(seconds: 1);

  @override
  void initState() {
    super.initState();
     Timer(
        Duration(seconds: 6),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => FirstScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Provider.of<ThemeNotifier>(context).lightTheme==true?Colors.white:Colors.blueGrey[900],
          systemNavigationBarColor: Colors.blueGrey,
          statusBarBrightness:Provider.of<ThemeNotifier>(context).lightTheme==true? Brightness.dark: Brightness.light,
        ),
        backgroundColor: Provider.of<ThemeNotifier>(context).lightTheme==true?Colors.white:Colors.blueGrey[900],
        elevation: 0.0,
      ),
      backgroundColor:Provider.of<ThemeNotifier>(context).lightTheme==true?primaryColorLight: Colors.black,
      body: LayoutBuilder(
        builder: (context, con) {
          print(con);
          return SafeArea(
              child: Column(

            children: [
              Stack(children: [
                Container(
                  height: con.maxHeight * 0.70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color:Provider.of<ThemeNotifier>(context).lightTheme==true? Colors.white:Colors.blueGrey[900],
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(45),
                    ),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          flex: 3,
                          child: DelayedDisplay(
                              delay:
                                  Duration(seconds: initialDelay.inSeconds + 1),
                              child: Container(
                                height: 500,
                                width: 500,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/image/logo.png'))),
                              )),
                        ),
                        Expanded(
                          flex: 2,
                          child: DelayedDisplay(
                            delay:
                                Duration(seconds: initialDelay.inSeconds + 2),
                            child: Text(
                              "EGYPTIAN YOUTH COUNCIL",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0,
                                color:Provider.of<ThemeNotifier>(context).lightTheme==true? Colors.blueGrey[600]:Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ]),
                ),
              ]),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 40
                ),
                child: CircularProgressIndicator(
                  color:Provider.of<ThemeNotifier>(context).lightTheme==true?Colors.blueGrey[600]: Colors.white,
                ),
              ),
            ],
          ));
        },
      ),
    );
  }
}
