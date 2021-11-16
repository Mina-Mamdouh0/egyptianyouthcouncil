import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeNotifier extends ChangeNotifier{
  final String key='theme';
  SharedPreferences? _pref;
  bool? _lightTheme;
  bool? get lightTheme=>_lightTheme;

  ThemeNotifier(){
    _lightTheme=true;
    _loadFormPref();
  }
  toggleTheme() {
    _lightTheme = !_lightTheme!;
    _saveToPref();
    notifyListeners();
  }
  _initPref()async{
    if(_pref==null){
      _pref=await SharedPreferences.getInstance();
    }
  }
  _loadFormPref()async{
    await _initPref();
    _lightTheme=_pref!.getBool(key) ?? true;
    notifyListeners();
  }
  _saveToPref()async{
    await _initPref();
    _pref!.setBool(key, _lightTheme!);
  }
}


final primaryColorLight = Color(0XFFF5F5F5);
final darkBlackColor = Color(0XFF212121);

final secColorDark=Color(0XFF363636);
final secColorLight=Color(0XFFE2E5DE);
final lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,

      elevation: 0.0,
      backwardsCompatibility: false,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor:Colors.white,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness:Brightness.dark ,
        systemNavigationBarColor:Colors.white,
      ),
foregroundColor: Colors.black
    ),
    tabBarTheme: TabBarTheme(
      labelColor: Colors.black,
      unselectedLabelColor: Colors.grey,
    ),
    iconTheme: IconThemeData(
      color: Colors.black,
      size: 30
    ),

    primaryColor:primaryColorLight,
    accentColor: Colors.white,
    canvasColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primaryColorLight,
      foregroundColor: Colors.white,
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
          color: Color(0XFF0047AB),
          fontSize: 25,
          fontWeight: FontWeight.bold),
      subtitle1: TextStyle(
          color: Colors.black,
          fontSize: 15,
          wordSpacing: 2,
          letterSpacing: 1.5,
          fontWeight: FontWeight.w500),
    ));

final darkTheme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: darkBlackColor,
      foregroundColor: Colors.white,
      elevation: 10.0,
      backwardsCompatibility: false,
      systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor:darkBlackColor,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness:Brightness.light ,
        systemNavigationBarColor: darkBlackColor,
      ),
    ),
    tabBarTheme: TabBarTheme(
      labelColor: Colors.white,
      unselectedLabelColor: Colors.grey,
    ),
    iconTheme: IconThemeData(
      color: Colors.white,
       size: 30
    ),
    primaryColor:secColorDark,
    accentColor: darkBlackColor,
    canvasColor: Colors.white,
    scaffoldBackgroundColor: darkBlackColor,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primaryColorLight,
      foregroundColor: Colors.white,
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
          color: Colors.blue,
          fontSize: 25,
          fontWeight: FontWeight.bold),
      subtitle1: TextStyle(
          color: Colors.white,
          fontSize: 15,
          wordSpacing: 2,
          letterSpacing: 1.5,
          fontWeight: FontWeight.w500),
    ));
