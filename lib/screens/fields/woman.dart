import 'package:egyptianyouthcouncil/shared/component/text.dart';
import 'package:expand_widget/expand_widget.dart';
import 'package:flutter/material.dart';

class Woman extends StatelessWidget {
  const Woman({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          text(
            context: context,
            title: 'قطاع المرأة ',
            subTitle: '''•	شبكة الجمعيات الاهلية لمناهضة ختان الإناث (كاملة)
•	منتدى القيادات النسائية
•	ملتقي منتدى القيادات النسائية
•	الدعم الاقتصادي للمرأة المعيلة
                  ''',
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
                    'شبكة الجمعيات الاهلية لمناهضة ختان الإناث ',
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
                        'يأتي الهدف العام من هذه الشبكة توحيد الجهود المبذولة للقضاء على ختان الاناث إلى جانب احتوائها على مرصد ختان الاناث لتوثيق تاريخ عمل المجتمع المدني في مناهضة ختان الاناث، ورصد كافة الفعاليات والأنشطة التي تتم في الوقت الحالي بالإضافة إلى إصدار توصيات إلى الجهات المعنية بهدف تحسين أوضاع المرأة والقضاء على العنف طبقاً للمعاهدات والاتفاقيات المصدق عليها عالمياً.',
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
                    'منتدى القيادات النسائية ',
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
                        '''يتم تنظيم منتدى القيادات النسائية لتحسين مهارات الادارة والقيادة لتمكين الكوادر النسائية العاملات بالمجتمع المدني وتعزيز قدرات منظمات المجتمع المدني ليقوموا بدور أكثر فاعلية في خدمة المجتمع
•	تحسين قدرات المرأة الادارية والقيادية وزيادة وعيها حول دورها في المجتمع
•	بناء قدرات ورفع كفاءة مؤسسات المجتمع المدني من الناحية البرامجية والادارية والمالية 
•	تشبيك منظمات المجتمع المدني وتنسيق الجهود المشتركة لخدمة قضايا المجتمع  

                  '''
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
                    'ملتقي منتدى القيادات النسائية ',
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
                        '''يقدم ملتقى خريجي منتدى القيادات النسائية  مجموعة متنوعة من التدريبات التشاركية واللقاءات المتخصصة وفعاليات التشبيك المصممة لكل من سبق لهم الالتحاق بمنتدى القيادات النسائية وذلك لبناء قدراتهم داخل مؤسساتهنً
وتتضمن فعاليات الملتقي فاعليات مختلفة مثل:
•	حوارات مع ضيوف ملهمين حول مواضيع وقضايامجتمعية ذات صلة.
•	ورش عمل تدريبية عن أحدث المناهج والممارسات المستخدمة في عالم التنمية. 
•	لقاءات متخصصة للعاملين في المجال الواحد بغرض بناء القدرات وخلق الشراكات وفرص التعاون بين الخريجيين

                  '''
                            .trim(),
                        style: Theme.of(context).textTheme.subtitle1,
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
