import 'package:egyptianyouthcouncil/shared/component/text.dart';
import 'package:expand_widget/expand_widget.dart';
import 'package:flutter/material.dart';

class MediaProduction extends StatelessWidget {
  const MediaProduction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          text(
              context: context,
              title: 'قطاع الإعلام ',
              subTitle: '''•	البرنامج الوطني لإعداد الكوارد الإعلامية 
•	وحدة الإنتاج الإعلامي
•	راديو المجلس
•	شبكة قولي الإعلامية
•	المرصد الإعلامي
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
                    'البرنامج الوطني لإعداد الكوارد الإعلامية ',
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
                                'assets/image/image3.jpg',
                              ),
                            ),
                          ),
                          Text(
                            'يؤمن المجلس بأهمية الاعلام في التطوير والنهوض بالمجتمعات لذلك سعى مجلس الشباب المصري منذ نشأته علي اعداد قاعدة قوية من الكوادر الاعلامية الشابة وتأهيلهم وفق احدث الاساليب والانظمة الاعلامية واختبار قدراتهم علي تطبيق تلك الاساليب بكفاءة عالية لتكوين نواة حقيقية لمجتمع اعلامي جديد يفكر ويتعلم ويبتكر ويكون قادراً علي مواكبة تطورات العصر والتعبير عن قضايا الشباب لذلك قام المجلس خلال لذا هدف هذا البرنامج للتدريب العملي والنظري في أقسام الاعلام حيث يتم التدريب على مهارات المذيع التلفزيوني ومهارات المذيع الإذاعي والمهارات الصحفية بالإضافة للمونتاج والجرافيك ديزاين والتصوير الفيديو والصحفي والإخراج ومهارات المراسل التلفزيوني وتم ذلك على يد مجموعة من نجوم الإعلام',
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
                    'شبكة قولى الاعلامية',
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
                        '''تم انشاء شبكة قولي الاعلامية كأحد مبادرات مجلس الشباب المصري وذلك لتفريخ المواهب من شباب المتدربين علي البرامج الاعلامية من داخل مجلس الشباب المصري وتمتلك الشبكة رؤية خاصة حيث تري ان الاعلام المصري يمكن ان يحقق طفرة كبيرة من الشباب والي الشباب وتتكون الشبكة من ثلاثة منصات رئيسية تتكامل سوياً في اهدافها ومنطلقاتها وتعتبر الشبكة هي التتويج الامثل لتدريبات الاعلام المقدمة من مجلس الشباب المصري حيث يتم تهيئة الشباب للعمل الاعلامي ليصبح شاملً مع التدريب النظري والممارسة العملية والمهنية واكتساب الخبرة والاحتراف واتاحة التوظيف للمتميزين وتهدف الشبكة الي :
1 – المساهمة في تمكين الشباب من خلال منحهم القيادة في المنابر الاعلامية الثلاثة ( الصحافة والاذاعة والتلفيزيون )
2 – تنمية وعي جمهور الشباب المصري من خلال خطاب يحترم عقليته ويراعي تثقيفه وتحصينه ضد الافكار المغلوطة بإسلوب يمزج بين التعليم والترفيه .
3 – مناقشة اهم القضايا التي تشغل بال الشباب ومعالجتها سواء من خلال توعية المتابعين للشبكة بكيفية التعامل السليم معها او بتوجيه نظر المسئولين اليها .
4 – استكمال التدريب النظري الذي يقدمه مجلس الشباب المصري في مجال الاعلام للشباب من خلال التدريب علي الممارسة العملية بما يساهم في تخريج كوادر اعلامية جديدة تتمتع بالمهنية والاحترافية .
5 – فتح الباب امام المواهب الشابة الجديدة في مجالات الادب والقصة القصيرة والشعر والنثر بالاضافة لتقديم المواهب الصحفية الشابة .
وتمارس الشبكة عملها من خلال المقر الرئيسي لمجلس الشباب المصري حيث تمتلك استوديو مجهز بأحدث المعدات من كاميرات واجهزة صوتية ومعدات اضاءة واجهزة حاسب وموقع اليكتروني مستقل يحمل عنوان www.2oolly.com  وغيرها قام المجلس بتوفيرها تحت تصرف وادارة الشبكة بالكامل لتتمكن من تحقيق اهدافها
وتنقسم الشبكة الي ثلاثة منصات اعلامية هي :
•	قولي TV
•	قولي نيوز
•	قولي راديو
''',
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
                    'المرصد الاعلامى ',
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
                        '''أطلق مجلس الشباب المصري المرصد الإعلامي للانتخابات الرئاسية وذلك بهدف رصد العملية الانتخابية أثناء الحملات الانتخابية وأثناء عمليتي الاقتراع والفرز والمرصد يتكون من أربع وحدات داخلية: 
•	التخطيط
•	الرصد
•	الاستطلاعات
•	الإنتاج الإعلامي
وهدف المرصد إلى رصد ما تنشره وسائل الإعلام المحلية والأجنبية عن العملية الانتخابية بالإضافة إلى تحليل الأخبار والمعالجات الإعلامية للعملية الانتخابية كما يقوم المرصد بعمل عدد من استطلاعات الرأي فيما يخص الانتخابات، بجانب إصدار التقارير الإعلامية بحياد ومهنية باعتبار مجلس الشباب المصري أحد منظمات المجتمع المدني المنوط بها متابعة الانتخابات الرئاسية المقبلة بناء علي تصريح الهيئة الوطنية للانتخابات الصادر برقم 162 لسنة 2018.
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
      )),
    );
  }
}
