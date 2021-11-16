

import 'package:egyptianyouthcouncil/shared/component/text.dart';
import 'package:flutter/material.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          text(
            context: context,
            title: 'قطاع التكنولوجيا بالمجلس ',
            subTitle: '''•	لجنة تطبيقات الهاتف
•	لجنة المواقع الإلكتروني
•	لجنة قواعد البيانات'''
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
            child: Card(
                color: Theme.of(context).primaryColor,
                child: Padding(
                  padding:const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text('بادر المجلس بتشجيع حبادر المجلس بتفعيل التحول الرقمي عن طريق مبادرة محو الأمية التكنولوجية والتي قام المجلس بها بتدريب اكثر من 3000 شخص علي التحول الرقمي واستخدام الكمبيوتر',
                  style: Theme.of(context).textTheme.subtitle1,),
                )),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
            child: Card(
                color: Theme.of(context).primaryColor,
                child: Padding(
                  padding:const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('لجنة تطبيقات الهاتف والمسئولة عن انشاء التطبيقات الخاصة بالمجلس وأنشطتة ',
                        style: Theme.of(context).textTheme.headline1!.copyWith(
                          fontSize: 18,fontWeight: FontWeight.bold
                        ),),
                      Text('''
الأعضاء :
مينا ممدوح محارب
عبدالرحمن محمد عبد الفتاح
هيام مجدي السيد
حبيبة جمال
'''.trim(),style: Theme.of(context).textTheme.subtitle1,),
                    ],
                  ),
                )),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
            child: Card(
                color: Theme.of(context).primaryColor,
                child: Padding(
                  padding:const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('لجنة المواقع الإلكتروني والتي تختص بإنشاء المواقع الخاصة بالمجلس وتحديث البيانات الخاصة بكل قطاعات العمل',
                        style: Theme.of(context).textTheme.headline1!.copyWith(
                            fontSize: 18,fontWeight: FontWeight.bold
                        ),),
                      Text('''
الأعضاء :
إسراء الشبلي
مروة حامد
محمد أشرف
سام أحمد
محمد زينهم
'''.trim(),style: Theme.of(context).textTheme.subtitle1,),
                    ],
                  ),
                )),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
            child: Card(
                color: Theme.of(context).primaryColor,
                child: Padding(
                  padding:const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('لجنة قواعد البيانات والتي تختص بتحديث بيانات المجلس ',
                        style: Theme.of(context).textTheme.headline1!.copyWith(
                            fontSize: 18,fontWeight: FontWeight.bold
                        ),),
                      Text('''
الأعضاء :
حنين ياسر
عمر محمد
'''.trim(),style: Theme.of(context).textTheme.subtitle1,),
                    ],
                  ),
                )),
          ),


        ],
      ),
    );
  }
}
