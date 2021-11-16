//Research and Studies
//البحوث والدرسات
import 'package:egyptianyouthcouncil/shared/component/text.dart';
import 'package:expand_widget/expand_widget.dart';
import 'package:flutter/material.dart';

class ResearchAndStudies extends StatelessWidget {
  const ResearchAndStudies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        text(
            context: context,
            title: 'قطاع البحوث والدراسات',
            subTitle: '''•	النشرة المصرية للبحوث والدراسات 
•	منتدى السياسات والدراسات البرلمانية
•	ملتقى خريجي السياسات العامة
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
                  'النشرة المصرية للبحوث والدراسات ',
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
                          '''تسعى النشرة المصرية للبحوث والدراسات  إلى تقديم  التحليلات المختلفة في شتى القضايا وذلك على الصعيد المحلي والإقليمي والدولي  مع التركيز على القضايا المرتبطة بالشأن المصري وتنقسم النشرة إلى عدد من التخصصات المتمثلة في: 
•	سياسة (شؤون عربية و إقليمية _ شؤون أوربية – شؤون أفريقية – شؤون أسيوية)
•	اقتصاد 
•	تنمية ومجتمع
•	المرأة والطفل 
•	البيئة 
•	التاريخ 
•	الإعلام والرأي العام 
•	التطرف والإرهاب 
•	الأمن والسلام 
•	حقوق الانسان  '''
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
                  '	منتدى السياسات والدراسات البرلمانية',
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
                              'assets/image/image5.jpg',
                            ),
                          ),
                        ),
                        Text(
                          '''يسعى منتدي السياسات والدراسات البرلمانية إلى تقديم وتوفير أفضل الخدمات البحثية والمعلوماتية للسادة أعضاء مجلس النواب والشيوخ إلى جانب إمدادهم بالمهارات والأدوات المعرفية اللازمة لمساعدتهم على ممارسة واجباتهم التشريعية والرقابية لتمكينهم من تقديم أفضل أداء ينعكس بالإيجاب علي الصعيد التشريعي والرقابي، كما يصدر المنتدى إصدار تحت مسمى متابعات برلمانية وهو إصدار شهري يتم من خلاله تسليط الضوء على الجلسات العامة التي يعقدها مجلس النواب خلال الشهر إلى جانب استعراض مشاريع القوانين التي تم مناقشتها وذلك بهدف توفير أفضل الخدمات المعلوماتية ورفع مستوى الارتقاء بالوعي والثقافة البرلماني
                                '''.trim(),
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
                  '	ملتقى خريجي السياسات العامة',
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
                              'assets/image/image6.jpg',
                            ),
                          ),
                        ),
                        Text(
                          'هو ملتقي لخريجي برنامج دورة كتابة أوراق السياسات العامة والتي يتم عقدها بصورة شهرية حيث يسعى المتلقى إلى تخريج عدد من الشباب المهتمين بصنع وصياغة أوراق السياسات العامة لبناء قاعدة شبابية بحثية في كافة المجالات بهدف الخروج ببدائل وحلول واقعية لحل المشاكل المجتمعية الملحة',
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
    ));
  }
}
