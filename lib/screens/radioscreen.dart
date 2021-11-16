import 'package:egyptianyouthcouncil/shared/component/morecomponent.dart';
import 'package:egyptianyouthcouncil/shared/component/cards.dart';
import 'package:egyptianyouthcouncil/shared/network/remotle.dart';
import 'package:egyptianyouthcouncil/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RadioScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            appBar: AppBar(
              title: Text('الراديو'),
             elevation: 0,
              actions: [
                useIconButton(
                    onPress: () {
                      navigatorPush(context,
                          widget: WebViewScreen(
                              url: 'https://www.facebook.com/RadioElmagles/',
                              name: 'راديو المجلس '));
                    },
                    icons: Icons.facebook),
              ],
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(

                        width: double.infinity,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: ClipRRect(
                          borderRadius:  BorderRadius.circular(15),
                          child: Image.asset(
                            'assets/image/radio.jpeg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Card(
                        color: Provider.of<ThemeNotifier>(context).lightTheme==true?primaryColorLight: Color(0XFF363636),
                        child: Text(
                          'منصة '
                              'اعلامية شبابية تهدف إلى الوصول لقاعدة أكبر من الشباب للتأثير في الوعي المجتمعي في جميع الإتجاهات',
                          textAlign: TextAlign.start,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .copyWith(fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'وضم الموسم الأول 15 برنامج',
                        textAlign: TextAlign.start,
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1!
                            .copyWith(fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'الموسم الثاني 13 برنامج',
                        textAlign: TextAlign.start,
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1!
                            .copyWith(fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'الموسم الثالث 24 برنامج',
                        textAlign: TextAlign.start,
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1!
                            .copyWith(fontSize: 20),
                      ),
                    ]),
              ),
            )));
  }
}
