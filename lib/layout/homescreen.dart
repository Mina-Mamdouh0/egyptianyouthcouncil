import 'package:egyptianyouthcouncil/screens/achievements.dart';
import 'package:egyptianyouthcouncil/screens/councilworkunits/units.dart';
import 'package:egyptianyouthcouncil/screens/fields/fields.dart';
import 'package:egyptianyouthcouncil/screens/member.dart';
import 'package:egyptianyouthcouncil/screens/partnerships/partnerships.dart';
import 'package:egyptianyouthcouncil/screens/radioscreen.dart';
import 'package:egyptianyouthcouncil/shared/component/morecomponent.dart';
import 'package:egyptianyouthcouncil/shared/component/cards.dart';
import 'package:egyptianyouthcouncil/shared/network/remotle.dart';
import 'package:egyptianyouthcouncil/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/scheduler.dart';
class HomeModel {
  final String nameScreen;
  final Widget screen;
  final String nameImage;
  final IconData icon;

  HomeModel(
      {required this.nameScreen,
      required this.screen,
      required this.nameImage,
      required this.icon});
}

List<HomeModel> date = [
  HomeModel(
      nameScreen: 'مجالات عمل المجلس',
      screen: FieldsScreen(),
      nameImage: 'assets/image/layout/fields.png',
      icon: Icons.dashboard_outlined),
  HomeModel(
      nameScreen: 'وحدات المجلس',
      screen: UnitsScreen(),
      nameImage: 'assets/image/layout/units.png',
      icon: Icons.ac_unit_sharp),
  HomeModel(
      nameScreen: 'الشراكات',
      screen: PartnerShipScreen(),
      nameImage: 'assets/image/layout/partnerships.jpg',
      icon: Icons.shuffle),
  HomeModel(
      nameScreen: 'الانجازات',
      screen: AchievementsScreen(),
      nameImage: 'assets/image/layout/achievements.jpeg',
      icon: Icons.library_add_check),
  HomeModel(
      nameScreen: 'الرديو',
      screen: RadioScreen(),
      nameImage: 'assets/image/layout/radio.jpg',
      icon: Icons.radio),
  HomeModel(
      nameScreen: 'الكوادر',
      screen: MembersScreen(),
      nameImage: 'assets/image/layout/members.jpeg',
      icon: Icons.people),
];

class HomeScreen extends StatefulWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
     timeDilation = 2.0;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 5),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/image/iconlogo.png'),
                ),
              ),
            ),
          ),
          title: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Center(child: Text('مجلس الشباب المصري',
            style: TextStyle(

            ),),
            ),
          ),
          actions: [
            useIconButton(
              color: Colors.blue,
                onPress: () {
                  showDialog(context: context,
                    barrierDismissible:false,builder: (context)=> AlertDialog(
                      backgroundColor: Theme.of(context).primaryColor,
                      content: Directionality(
                        textDirection: TextDirection.rtl,
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ListTile(
                                leading: Icon(FontAwesomeIcons.phone,
                                  color: Colors.teal,
                                ),
                                title: Text('اتصال'),
                                onTap: ()async{
                                    const url = "tel:01124078793";
                                    if (await canLaunch(url)) {
                                      await launch(url);
                                    } else {
                                      throw 'Could not launch $url';
                                    }

                                },
                              ),
                              Divider(height: 1,color: Colors.grey,),
                              ListTile(
                                leading: Icon(Icons.email,color: Provider.of<ThemeNotifier>(context).lightTheme==true?Colors.black:Colors.white,
                                ),
                                title: Text('ارسال بريد الكتروني'),
                                onTap: ()async{
                              String email="egy.youthcouncil@gmail.com";
                              if (await canLaunch("mailto:$email")) {
                              await launch("mailto:$email");
                              } else {
                              throw 'Could not launch';
                              }
                                },
                              ),
                              Divider(height: 1,color: Colors.grey,),
                              ListTile(
                                leading: Icon(FontAwesomeIcons.locationArrow,color: Colors.deepPurple,
                                  ),
                                title: Text('العنوان'),
                                onTap: ()=> navigatorPushReplacement(context, widget: WebViewScreen(name: 'العنوان',url: 'https://www.google.com/maps/place/%D9%85%D8%AC%D9%84%D8%B3+%D8%A7%D9%84%D8%B4%D8%A8%D8%A7%D8%A8+%D8%A7%D9%84%D9%85%D8%B5%D8%B1%D9%89%E2%80%AD/@30.0446576,31.2389602,17z/data=!3m1!4b1!4m5!3m4!1s0x145847f63e751aab:0xc98c436018f9f3a0!8m2!3d30.0446576!4d31.2411489',))

                              ),
                              Divider(height: 1,color: Colors.grey,),
                              ListTile(
                                leading: Icon(FontAwesomeIcons.facebook,
                                  color: Colors.blue,
                                  ),
                                title: Text('فيسبوك'),
                                onTap: (){
                                  navigatorPushReplacement(context, widget: WebViewScreen(name: 'فيسبوك',url: 'https://www.facebook.com/eycd2030',));
                                },
                              ),
                              Divider(height: 1,color: Colors.grey,),
                              ListTile(
                                leading: Icon(FontAwesomeIcons.youtube,
                                 color: Colors.red
                                ),
                                title: Text('يوتيوب'),
                                onTap: (){
                                  navigatorPushReplacement(context, widget: WebViewScreen(name: 'يوتيوب',url: 'youtube.com/channel/UC8eM2EA1QvoHELFsE43Yj_g',));
                                },
                              ),
                      MaterialButton(
                          onPressed: ()=>Navigator.of(context).pop(),
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),
                              side: BorderSide(color: Provider.of<ThemeNotifier>(context).lightTheme==true?Color(0XFF0047AB):Colors.blue,)),
                          child: Text(
                            'رجوع',
                            style: TextStyle(
                              fontSize: 15,
                              color: Provider.of<ThemeNotifier>(context).lightTheme==true?Color(0XFF0047AB):Colors.blue,
                            ),
                          ),
                      ),

                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
                icons: Icons.add_call),
            useIconButton(
                onPress: () {
                  Provider.of<ThemeNotifier>(context, listen: false)
                      .toggleTheme();
                },
                 icons: Provider.of<ThemeNotifier>(context).lightTheme==true?FontAwesomeIcons.moon: Icons.wb_sunny_outlined,

            )],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView.builder(
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                setState(() {
                  navigatorPush(context, widget: date[index].screen);
                });
              },
              child: layoutCard(
                  context: context,
                  image: date[index].nameImage,
                  icon: date[index].icon,
                  text: date[index].nameScreen),
            ),
            itemCount: date.length,
          ),
        ),
      ),
    );
  }
}
// CommunicationScreen()
