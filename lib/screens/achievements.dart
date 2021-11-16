import 'package:egyptianyouthcouncil/shared/component/cards.dart';
import 'package:egyptianyouthcouncil/shared/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AchievementsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Directionality(
            textDirection: TextDirection.rtl,
            child: Scaffold(
                appBar: AppBar(
                  title: Text('الانجازات'),
                ),
                body: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Card(
                          color: Theme.of(context).primaryColor,
                          child: Column(children: <Widget>[
                            Container(
                              width: double.infinity,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('التدريبات',style: Theme.of(context).textTheme.headline1!.copyWith(
                                    color: Provider.of<ThemeNotifier>(context).lightTheme==true?Colors.black:Colors.blue,
                                    fontSize: 20)
                                ),
                              ),

                            ),
                            Container(
                              height: 150,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/image/achievements/exercises.jpeg'),fit: BoxFit.cover),
                                shape: BoxShape.rectangle,
                              ),
                            ),
                            listTileAchievement(
                                context: context,
                                textTile: 'البرامج التدريبيه',
                                subTextTile:
                                    'تتنفيذ ما يزيد عن 400 برنامج  تدريبي مختلف في شكل منح مجانية لتعزيز وتنمية قدرات الشباب المصري في كافه المجالات مثل : رياده الأعمال – التمكين الأقتصادي -المواردالبشرية -التدريبات الأعلامية – التدريبات القانونية – العلوم السياسية – البحث العلمي – البرامج التخصصية'),
                            listTileAchievement(
                                context: context,
                                textTile: 'عدد المستفيدين',
                                subTextTile:
                                    'أجمالي عدد المستفيدين من الشباب و الفتيات علي مستوي المحافظات المصرية الذين استفادوا من المنح والبرامج التدريبية وقاموا بالمشاركة في فعاليات وأنشطة مجلس الشباب المصري هو 86000'),
                            listTileAchievement(
                                context: context,
                                textTile: 'الأنتخابات والأستفتاءات',
                                subTextTile:
                                    ' "12000 هو عدد الشباب من المحافظات المصرية الذين تم تدريبهم علي متابعة الأنتخابات والأستفتاءات واليات  المتابعة والرقابة المجتمعية وتعزيز مفاهيم الشفافية والألتزام  بالمعايير الدولية وهو العدد الأكبر الذي قامت بتأهيله أي منظمه مجتمع مدني مصرية من خلال برنامجيين هما\n	البرنامج الوطني لمتابعه الأنتخابات الرئاسيه المصريه2018 \n	البرنامج الوطني للرصد والمتابعه 2019 \n وتم انتقاء المتميزيين منهم واختيارهم كمتابعين ميدانيين في الأنتخابات الرئاسية عام 2018 والاستفاء علي  التعديلات الدستورية عام2019  وانتخابات نقابة الأطباء المصريه عام 2019 والأتنخابات التكميلية لمجلس النواب بدائرتي قسم الجيزة وملوي بالمنيا عام 2020",'),
                            listTileAchievement(
                                context: context,
                                textTile: 'الأكواد الخاصة بالمتابعين',
                                subTextTile:
                                    '3000 هو عدد الأكواد الخاصة بالمتابعين الميدانيين التي منحتها الهيئة الوطنية للأنتخابات لمجلس الشباب المصري بعد قيده في سجل منظمات المجتمع المدني المصرح لها بمتابعه الأنتخابات والأستفتاءات عام 2019 بعد ان كانت منحت للمجلس 650 كود لمتابعي المجلس الميدانيين في الأنتخابات الرئاسيه عام 2018'),
                            ExpansionTile(
                              childrenPadding: EdgeInsets.all(10),
                              title: Text(
                                'الاعلام',
                                style: TextStyle(
                                  fontSize: 15,

                                ),
                                softWrap: true,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              children: [
                                Text(
                                  '6000 هم عدد الشباب الذين قاموا بالأستفاده من الدورات التدريبيه التي قدمها المجلس في مجال الأعلام سواء ضمن مبادره أعلامنا بشبانا  او برنامج أعداد الكوادر الأعلاميه الذي ينعقد بشكل ربع سنوي منذ 3 سنوات ويشتمل علي منح تدريبية في الأخراج -المراسلة التلفزيونية -الصحافة -اعداد المتحدث الأعلامي -اعداد مديرالسياسات الأعلامية -الأذاعة -الدوبلاج -التعليق الصوتي -المونتاج -الجرافيك',
                                  softWrap: true,
                                  overflow: TextOverflow.fade,
                                  style: TextStyle(color: Provider.of<ThemeNotifier>(context).lightTheme==true?Colors.black:Colors.white),
                                ),
                                Text(
                                  '1300 هو عدد الملفات اللي قام بأعدادها خريجي التدريبات الأعلامية الخاصة بمجلس  الشباب المصري ما بين ملفات مصوره تم بثها علي قولي tvاوملفات صوتيه تم اذاعتها علي راديو او تقارير صحفيه تم نشرها قولي نيوز',
                                  softWrap: true,
                                  overflow: TextOverflow.fade,
                                  style: TextStyle(color:Provider.of<ThemeNotifier>(context).lightTheme==true?Colors.black:Colors.white),
                                ),
                              ],
                              collapsedIconColor:Provider.of<ThemeNotifier>(context).lightTheme==true? Colors.blue[900]:Colors.blue,
                              collapsedTextColor:Provider.of<ThemeNotifier>(context).lightTheme==true?Colors.blue[900]:Colors.blue,
                              textColor:Provider.of<ThemeNotifier>(context).lightTheme==true?Colors.black: Colors.white,
                              iconColor:Provider.of<ThemeNotifier>(context).lightTheme==true?Colors.black :Colors.white,
                              backgroundColor: Provider.of<ThemeNotifier>(context).lightTheme==true?Colors.blueGrey[200]:Colors.black38,
                            ),
                            listTileAchievement(
                                context: context,
                                textTile: 'التمكين الأقتصادي',
                                subTextTile:
                                    'هو عدد الشباب المستفيدين من  المنح والدورات التدريبية في مجال التمكين الأقتصادي التي قام بتنفيذها المجلس الشباب في المجلات التاليه : \n رياده الأعمال -تأهيل الشباب لسوق العمل -المشغولات اليدويه -خدمه العملاء -التسويق الألكتروني -اداره الموارد البشريه -الأرشادالسياحي'),


                          ]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Card(
                          color: Theme.of(context).primaryColor,
                          child: Column(children: <Widget>[
                            Container(
                              width: double.infinity,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('المنظمات',style: Theme.of(context).textTheme.headline1
                                ),
                              ),
                            ),
                            Container(
                              height: 150,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/image/achievements/organizations.jpeg'),fit: BoxFit.cover),
                                shape: BoxShape.rectangle,
                              ),
                            ),
                            listTileAchievement(
                                context: context,
                                textTile: 'منظمات المجتمع المدني',
                                subTextTile:
                                '300 هو عدد منظمات المجتمع المدني المشاركه في الدوره الثانيه من  منتدي منظمات المجتمع المدني (مصر2019  ) الذي قام بتنفيذه مجلس الشباب المصري بهدف تعزيز مشاركه المجتمع المدني في صناعه القرار بعد نجاح الدوره الأولي  للمنتدي عام 2017  والتي قام بتنفيذها المجلس بمشاركه 15جمعيه ومؤسسه اهليه مصريه'),
                          ]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Card(
                          color: Theme.of(context).primaryColor,
                          child: Column(children: <Widget>[
                            Container(
                              width: double.infinity,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('التشريعات',style: Theme.of(context).textTheme.headline1
                                ),
                              ),

                            ),
                            Container(
                              height: 150,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/image/achievements/legislation.jpeg'),fit: BoxFit.fill),
                                shape: BoxShape.rectangle,
                              ),
                            ),
                            listTileAchievement(
                                context: context,
                                textTile: 'التشريعات والقوانين',
                                subTextTile:
                                '8 هو عدد  التشريعات والقوانين التي أطلق المجلس حولها حوار مجتمعي بهدف وضع تصور وصياغه لتعديها بمشاركه اعضاء من مجلس النواب وعدد من قيادات المجتمع المدني المصري بالأضافه لرموز سياسه وقانونيه ومتخصصين وذلك حول قانون تنظيم العمل الأهلي- قانون الأحوال الشخصيه – التشريعات الخاصه بالنظام الأنتخابي المصري – التشريعات الخاصه بالنظام اللأنتخابي المصري -  التشريعات المتعلقه بمواجهه العنف ضد المرأه'),
                          ]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Card(
                          color: Theme.of(context).primaryColor,
                          child: Column(children: <Widget>[
                            Container(
                              width: double.infinity,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('المبادرات',style: Theme.of(context).textTheme.headline1
                                ),
                              ),

                            ),
                            Container(
                              height: 150,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/image/achievements/Initiatives.jpeg'),fit: BoxFit.fill),
                                shape: BoxShape.rectangle,
                              ),
                            ),
                            listTileAchievement(
                                context: context,
                                textTile: 'المبادرات الخيرية',
                                subTextTile:
                                '12 هو عدد المبادرات الخيرية التي قام  بتنفيذها مخلس الشباب المصري والتي تنوعت ما بين تنظيم يوم اليتيم بشكل سنوي وتنظيم موائد الرحمن علي مدار العامين السابقين بالأضافه للمشاركه في حمله 100 يوم في خير وتنظيم حمله كبري للتبرع لمستشفي ابو الريش اثناء ازمتها التبرع بعدد كبير من عبوات الألبان والأجهزه والمستلزمات الطبيه للمستشفي وتنظيم حفل فني كبير بمستشفي سرطان الأطفال 75375 والتبرع لعدد من دور الأيتام والتبرع بالأغطيه والكساء  الشتوي واللحوم والموارد  الغذائيه للمناطق الأكثر احتياجا  بجنوب الجيزه ومبادره كراسه وقلم لتوزيع المستلزمات الدراسيه علي تلاميذ  المدارس بقري الدلتا'),

                          ]),
                        ),
                      ),



                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Card(
                          color: Theme.of(context).primaryColor,
                          child: Column(children: <Widget>[
                            Container(
                              width: double.infinity,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('المحافظات والدول',style: Theme.of(context).textTheme.headline1
                                ),
                              ),

                            ),
                            Container(
                              height: 150,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/image/achievements/country.jpeg'),fit: BoxFit.fill),
                                shape: BoxShape.rectangle,
                              ),
                            ),
                            listTileAchievement(
                                context: context,
                                textTile: 'المحافظات المصريه التي قام المجلس بتنفيذ انشتطه وفعالياته بها',
                                subTextTile:
                                'القاهره -  الجيزه – القليوبيه – الأسكندريه – البحيره – الغربيه – الشرقيه – الدقهليه – بورسعيد – السويس – الأسماعليه – الفيوم – المنيا – بني سويف – سوهاج -قنا – اسوان – الاقصر'),
                            listTileAchievement(
                                context: context,
                                textTile: 'المحافظات التي يمتلك  بها المجلس مكاتب تنفيذيه ذات تشكيل معتمد',
                                subTextTile:
                                'القاهره – الجيزه – القليوبيه -الشرقيه – الغربيه  - بورسعيد – بنب سويف – سوهاج'),
                            listTileAchievement(
                                context: context,
                                textTile: 'الدول الخارجية التي قام المجلس بزيارتها للمشاركة   في أنشطة  وفعاليات',
                                subTextTile:
                                'أوغندا – فيتنام – تنزانيا – لبنان – قبرص – التشيك – المغرب – البحرين – اندونسيا – الكويت- الولايات المتحده الأمريكيه'),


                          ]),
                        ),
                      ),
                    ],
                  ),
                ))));
  }
}



