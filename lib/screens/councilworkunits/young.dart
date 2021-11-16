
import 'package:egyptianyouthcouncil/shared/component/text.dart';
import 'package:expand_widget/expand_widget.dart';
import 'package:flutter/material.dart';

class SocialMediaManagement extends StatelessWidget {
  const SocialMediaManagement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        text(
            context: context,
            title: 'قطاع الشباب والنشء',
            subTitle: '''•	أكاديمية الشباب 
•	البرنامج الوطني لمكافحة الاستقطاب والتطرف الفكري.
•	برنامج تعزيز قدرات النشء
                '''
                .trim()),
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
                  'أكاديمية الشباب ',
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
                      '''على مدار العام عمل على تقديم كافة التدريبات للشباب في جميع المجالات المختلفة وذلك دون تحميل الدولة أو المتدربين بأية أعباء مالية وذلك ايمانا من المجلس أن المورد البشري هو العصب الاساسي للتنمية وبدون الاهتمام به وتطويره ورفع كفائته لايمكن الوصول إلى أي تقدم او نجاح وهو الهدف الذي سعى المجلس لتحقيقه من أجل رفع كفاءة ومهارات الشباب في مختلف المجالات لتكوين قاعدة قوية من الكوادر الشابة قادرة على البناء التطوير 
وفي ضوء ذلك انقسمت التدريبات التي يقدمها مجلس الشباب المصري إلى عدد من التخصصات يندرج داخلها عدد من التدريبات المتمثلة في الأتي:
•	التثقيف والمشاركة السياسية .
•	إعداد وتأهيل الكوادر الإعلامية .
•	اللغات .
•	التأهيل والتطوير الذاتي  .
•	التمكين الاقتصادي .
                        ''',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
/*
                        //\\            ||-------|)    ||--------|)    ||---------||
                       //  \\           ||       |)    ||        |)    ||         ||
                      //    \\          ||       |)    ||        |)    ||         ||
                     //      \\         ||_______|)    ||        |)    ||         ||
                    //        \\        ||             ||        |)    ||         ||
                   //          \\       ||-------|)    ||        |)    ||         ||
                  //||||||||||||\\      ||       |)    ||        |)    ||         ||
                 //              \\     ||       |)    ||        |)    ||         ||
                //                \\    ||_______|)    ||________|)    ||---------||
*/

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
                  'برنامج تعزيز قدرات النشء ',
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
                      '''تأتى فئة النشيء من أولى أهداف مجلس الشباب المصري حيث يعمل على تنمية مهارات النشء وتمكينهم اجتماعياً واقتصادياً وأن يكونوا ناشئين فعاليين في تواصلهم ومشاركتهم المدنية، كما يسعى البرنامج إلي تمكين النشء من تحقيق أحلامهم وأفكارهم وترجمتها إلى واقع عملي ملموس وإرساخ الأسس المطلوبة عن طريق التدريب والتأهيل وتقديم الاستشارات اللازمة لتحويل الأفكار الخاصة بهم إلى مبادرات وبرامج ومشاريع  مع استيعابهم لجميع المعوقات التي قد تعرقل تحقيق أحلامهم.
وتتمثل أهدلف البرنامج:
•	تعزيز التواصل والتفكير الابداعي .
•	توفير برامج بناء قدرات ذات مستوي عالي لتاهيلهم وتمكينهم من تحقيق اهدفهم .
•	اقامه ورش عمل للتدريب علي العلوم المتقدمه في مجلات مختلفه في الحياة العمليه .
•	رعايه الشباب النشئ في ااكتشاف مواهبهم وتنمية قدراتهم الثقافية والعلميه والنفسيه والبدانية.
•	تمكين النشئ في خبرة الحياه العامه والمجتمعية.
•	ضمان مستقبل افضل عن طريق التوعية الثقافية .
                        ''',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
