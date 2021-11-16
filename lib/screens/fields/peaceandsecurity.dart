import 'package:egyptianyouthcouncil/shared/component/text.dart';
import 'package:expand_widget/expand_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PeaceAndSecurity extends StatelessWidget {
  const PeaceAndSecurity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          text(
              context: context,
              title: 'قطاع السلام والأمن ',
              subTitle: '''•	المرأة والسلام والأمن 
•	الشباب والسلام والأمن'''),
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
                    'المرأة والسلام والأمن',
                    style: Theme.of(context).textTheme.headline1!.copyWith(
                      fontSize: 22
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8),
                  ExpandChild(
                    expandArrowStyle: ExpandArrowStyle.both,
                    //hintTextStyle: TextStyle(fontSize: 12),
                    indicatorBuilder: (context, onTap, expanded) =>
                        InkWell(onTap: onTap, child: Icon(Icons.expand)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'هو برنامج تم تدشينه تحت مظلة مجلس الشباب المصري إيمانًا بأهمية أن تحتلَّ أولوياتُ النساء مكانة مركزيةً في قرارات السلام والأمن على كافة المستويات وتفعيل لقرارات الأمم المتحدة  بدء من قرار مجلس الأمن رقم 1325  الصادر عام 2000 كأول قرار يقر بالدور المحوري الذي يجب أن تلعبه الدول لمنع حدوث نزاعات مستقبلية  " تفعيل أليات الإنذار المبكر" إلى جانب تعزيز مكانة النساء داخل جميع البلدان مما جعل أجندة المرأة والسلام والأمن أولوية وطنية لذا يعمل مجلس الشباب المصري على  تعزيز مشاركة المرأة في جميع مستويات صنع القرار المختلفة سواء كان على المستوى المحلي  أو الإقليمي وفقًا لمحاور القرار الأربعة ( المشاركة – الحماية – الوقاية- الإغاثة وإعادة الإدماج) .',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'الأهداف ',
                            style: Theme.of(context).textTheme.headline1!.copyWith(
                              fontSize: 22

                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            ''''•	توفير برامج بناء قدرات ذات مستوى عالي لتأهيل النساء للعب دور أكثر فاعلية في عملية بناء السلام الاجتماعي. 
•	اشراك الرجال في برامج طويلة المدى تستهدف تغيير الصورة النطية للنساء داخل المجتمعات.
•	تعزيز حقوق الإنسان وحمايتها وضمان المشاركة المتساوية والهادفة لكل النساء في جميع جوانب بناء السلام وعمليات منع نشوب النزاعات على النحو المبين في إطار قرار مجلس الأمن التابع للأمم المتحدة رقم 1325 ومجموعة التشريعات الدولية ذات الصلة المتعلقة بالمرأة.
•	تحسين البيئة القانونية لحماية حقوق النساء والوقاية من العنف الموجه نحوهن.
•	تعزيز التوعية حول مواضيع العنف القائم على النوع الاجتماعي والتعريف بالخدمات المتاحة للنساء في المجتمعات.
                  '''
                                .trim(),
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        )
                      ],
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
                    'الشباب والسلام والأمن ',
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
                        ''' سعى مجلس الشباب المصري إلى إبراز دور الشباب كشركاء حقيقيين وفعالين ومن خلاله تم تنفيذ عدد من الأنشطة:  
  •	منتدى شبابنا صناع السلام 
  •	التعايش السلمي في أطفيح
  •	اليوم العالمي لليتيم المهاجر 
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
