import 'dart:ui';

import 'package:delayed_display/delayed_display.dart';
import 'package:egyptianyouthcouncil/layout/homescreen.dart';
import 'package:egyptianyouthcouncil/shared/component/morecomponent.dart';
import 'package:egyptianyouthcouncil/shared/component/text.dart';
import 'package:egyptianyouthcouncil/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
appBar: AppBar(
  elevation: 0.0,
 backgroundColor: Provider.of<ThemeNotifier>(context).lightTheme==true?primaryColorLight: Color(0XFF363636),

  systemOverlayStyle: SystemUiOverlayStyle(
    statusBarColor:Provider.of<ThemeNotifier>(context).lightTheme==true?primaryColorLight: Color(0XFF363636),
    statusBarBrightness: Provider.of<ThemeNotifier>(context).lightTheme==true?Brightness.light:Brightness.dark,
    statusBarIconBrightness:Provider.of<ThemeNotifier>(context).lightTheme==true?Brightness.dark:Brightness.light ,
    systemNavigationBarColor: Provider.of<ThemeNotifier>(context).lightTheme==true?primaryColorLight: Color(0XFF363636),
  ),
),
        body: LayoutBuilder(
          builder: (context,con){
            print(con.maxHeight.toInt());
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: con.maxHeight*0.30,
                        decoration: BoxDecoration(
                          color:Provider.of<ThemeNotifier>(context).lightTheme==true?primaryColorLight: Color(0XFF363636),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 1,
                              child: DelayedDisplay(
                                  delay: Duration(milliseconds: 500),
                                  child: Container(
                                    /* height: 500,
                                  width: 500,*/
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('assets/image/logo.png'))),
                                  )),
                            ),
                            Expanded(
                              flex: 1,
                              child: DelayedDisplay(
                                delay: Duration(milliseconds: 500),
                                child: Text(
                                    "مجلس الشباب المصري",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      //fontFamily: 'NotoNasta',
                                      //fontWeight: FontWeight.bold,
                                      fontSize: 30.0,
                                      color:Provider.of<ThemeNotifier>(context).lightTheme==true?Colors.black: Colors.white,
                                    )
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
            SingleChildScrollView(
                    child: DelayedDisplay(
                        delay: Duration(milliseconds: 500),
                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            //SizedBox(height: 15,),
                            text(context: context,title: 'الهدف', subTitle: 'أن يكون الشباب  في موقع المبادرة لا المشاركة أو المساهمة من أجل ممارسة حقوقهم بحرية وعدالة اجتماعية'),
                            //SizedBox(height: 10,),
                            text(context: context,title: 'الرؤية', subTitle: 'شباب واعي بحقوقه قادر على المشاركة وتطوير مهاراته للعبور بوطنه من النماء إلى التقدم في شتى المجالات  '),
                            //SizedBox(height: 10,),
                            text(context: context,title: 'الرساله', subTitle: 'إتاحة الفرص للجميع بشكل متكافيء للوصول للعدالة الاجتماعية'),

                          ],
                        )),
                  ),

                ],
              ),
            );
          },

        ),
        floatingActionButton:Directionality(
          textDirection: TextDirection.ltr,
          child: FloatingActionButton.extended(
            onPressed: () {
              navigatorPush(context, widget: HomeScreen());
            },
            label: Text('التالي',style: TextStyle(color:Provider.of<ThemeNotifier>(context).lightTheme==true?Color(0XFF0047AB): Colors.blue,
            fontSize: 15)
            ),
              backgroundColor: Theme.of(context).accentColor,

            icon: Icon(Icons.navigate_before,size: 20,color: Provider.of<ThemeNotifier>(context).lightTheme==true?Color(0XFF0047AB): Colors.blue,),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(color: Provider.of<ThemeNotifier>(context).lightTheme==true?Color(0XFF0047AB): Colors.blue,width: 1),
            )

          ),
        ),
      ),
    );
  }
}
//