import 'package:egyptianyouthcouncil/shared/component/text.dart';
import 'package:expand_widget/expand_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PoliticalParticipation extends StatelessWidget {
  const PoliticalParticipation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          text(
              context: context,
              title: 'قطاع المشاركة السياسية',
              subTitle: '''•	البرنامج الوطني للرصد والمتابعة.
•	البرنامج الوطني لمتابعة الانتخابات الرئاسية.
•	نموذج محاكاة محليات مصر
                '''),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, bottom: 10),
            child: Card(
              color: Theme.of(context).primaryColor,
              child: Column(
                children: <Widget>[
                  Text(
                    'البرنامج الوطني للرصد والمتابعة',
                    style: Theme.of(context).textTheme.headline1!.copyWith(
                      fontSize: 22
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8),
                  ExpandChild(
                    expandArrowStyle: ExpandArrowStyle.both,
                    hintTextStyle: TextStyle(fontSize: 16),
                    indicatorBuilder: (context, onTap, expanded) =>
                        InkWell(onTap: onTap, child: Icon(Icons.expand)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                'assets/image/image4.jpg',
                              ),
                            ),
                          ),
                          Text(
                            '''بموجب القرار الصادر من قبل الهيئة الوطنية للانتخابات رقم 28 لسنة 2019 تابع مجلس الشباب المصري عملية الاستفتاء على التعديلات الدستورية والانتخابات الرئاسية انتهاءًا بانتخابات مجلس النواب والشيوخ، حيث يملك المجلس 27 غرفة عمليات على مستوى ال 27 محافظة بجمهورية مصر العربية. 
عملت غرف العمليات الخاصة بالمجلس على متابعة ورصد كل ما يحدث داخل لجان جمهورية مصر العربية حيث يملك المجلس 3000 متابع ميداني على مستوى جميع المحافظات عملوا جميعهم على التواصل الدائم مع الغرفة المركزية بالقاهرة لكتابة التقرير اليومي بشكل سليم وملم بجميع المعلومات من أجل مصلحة الوطن وليس من أجل أية كيانات أو أفراد وكان ذلك بشكل تطوعي دون اَي مقابل بهدف تعزيز مفهوم الرقابة المجتمعية وأهمية المجتمع المدني في المتابعة والتقويم حيث وصل إجمالي ما عمل ضمن فريق مجلس الشباب المصري إلى 8000 متطوع ما بين متابع ميداني وأعضاء بغرف العمليات وراصدين إعلاميين وغيرهم موزعين على غرف العمليات الخاصة بالمجلس.
                                '''
                                .trim(),
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, bottom: 10),
            child: Card(
              color: Theme.of(context).primaryColor,
              child: Column(
                children: <Widget>[
                  Text(
                    'البرنامج الوطني لمتابعة الانتخابات الرئاسية  ',
                    style: Theme.of(context).textTheme.headline1!.copyWith(
                        fontSize: 22
                    ),
                      textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8),
                  ExpandChild(
                    expandArrowStyle: ExpandArrowStyle.both,
                    hintTextStyle: TextStyle(fontSize: 16),
                    indicatorBuilder: (context, onTap, expanded) =>
                        InkWell(onTap: onTap, child: Icon(Icons.expand)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'بناء علي تصريح الهيئة الوطنية للانتخابات رقم 162 لسنة 2018 للمجلس بمتابعة الانتخابات الرئاسية لعام 2018 عن طريق المتابعين الميدانيين قام المجلس بإطلاق البرنامج الوطني لمتابعة الانتخابات الرئاسية والذي يستهدف اعداد وتأهيل 10000 متابع ميداني علي متابعة الانتخابات وكيفية رصد ومواجهة التجاوزات ليس في الانتخابات الرئاسية '
                            .trim(),
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, bottom: 10),
            child: Card(
              color: Theme.of(context).primaryColor,
              child: Column(
                children: <Widget>[
                  Text(
                    'نموذج محاكاة محليات مصر ',
                    style: Theme.of(context).textTheme.headline1!.copyWith(
                        fontSize: 22
                    ),
                      textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8),
                  ExpandChild(
                    expandArrowStyle: ExpandArrowStyle.both,
                    hintTextStyle: TextStyle(fontSize: 16),
                    indicatorBuilder: (context, onTap, expanded) =>
                        InkWell(onTap: onTap, child: Icon(Icons.expand)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                'assets/image/image2.jpg',
                              ),
                            ),
                          ),
                          Text(
                            'تم اعداد وتدريب الالاف من الشباب علي ماهية الادارة المحلية والفارق بين المجالس الشعبية المحلية والمجالس التنفيذية المحلية وماهي مهام عضو المجلس الشعبيى المحلي وماهي صلاحياته وكيف يقوم بأداء وظيفته ومهامه بكل كفائة وذلك من خلال اسبوع تدريبي كامل علي يد مجموعة من المتخصصين الاكفاء وتم تنفيذ النموذج في مختلف محافظات مصر ',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
