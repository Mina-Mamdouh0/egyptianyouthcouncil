import 'package:egyptianyouthcouncil/shared/component/text.dart';
import 'package:expand_widget/expand_widget.dart';
import 'package:flutter/material.dart';

class HumanRights extends StatelessWidget {
  const HumanRights({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        text(
          context: context,
          title: 'قطاع حقوق الإنسان ',
          subTitle: '''•	 سفراء الإستراتيجية الوطنية لحقوق الإنسان 
•	مرصد الإستراتيجية الوطنية لحقوق الإنسان 
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
                  'سفراء الإستراتيجية الوطنية لحقوق الإنسان  ',
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '''يهدف إلى تعزيز الوعي بحقوق الإنسان وإبراز الإنجازات التي تم تحقيقها في ملف حقوق الإنسان في الجمهورية الجديدة
آليات التنفيذ 
تعتمد المبادرة في تطوير وتحديث ومراجعة استراتيجيتها على إطار العمل الموضح بالأسفل وهي عملية مستمرة تعكس اهمية التخطيط، التنفيذ، التقييم والمراجعة والتطوير لضمان نشر الوعي بحقوق الإنسان وتشمل سياقات عمل الإستراتيجية مجموعة من المحاور تتمثل في:  
•	تعزيز السياسات التشريعية.
•	التشبيك.
•	التثقيف والتوعية. 
•	نافذة الشباب. 
•	التأهيل الإعلامي. 
''',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        Text(
                          ''' سعى مجلس الشباب المصري إلى إبراز دور الشباب  كشركاء حقيقيين وفعالين ومن خلاله تم تنفيذ عدد من الأنشطة:
•	منتدى شبابنا صناع السلام
•	التعايش السلمي في أطفيح
•	اليوم العالمي لليتيم المهاجر
                  '''
                              .trim(),
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        Divider(
                          height: 2,
                          color: Colors.black,
                        ),
                        Text(
                          'أولاً: تعزيز السياسات التشريعية',
                          style: Theme.of(context).textTheme.headline1!.copyWith(
                              fontSize: 22
                          ),
                            ),
                        Text(
                          '''يعمل هذا المحور بشكل أساسي على دور البرلمان حيث يتمثل دوره في:
•	اقتراح تعديلات تشريعية جديدة من أجل أن تتوافق مع الاستراتيجية الوطنية لحقوق الإنسان  وذلك لكي تتوافق التشريعات الجديدة مع الاستراتيجية.
•	الرقابة على أداء الحكومة في تفعيل هذه الاستراتيجية من أجل أن يكون التطبيق على الأرض متوافق مع ما تم ذكره في بنود الاستراتيجية.
أمثلة على القوانين التي ينبغي العمل علي تعديلها لأنهما ضمن أسس حقوق الإنسان:
•	قانون الأحوال الشخصية.
•	قانون العمل.
•	تنظيم عمل النقابات المهنية
•	حماية الملكية الفكرية والتنافسية.
•	تغليظ العقوبات للمخالفات البيئية
    '''
                              .trim(),
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        Divider(
                          height: 2,
                          color: Colors.black,
                        ),
                        Text(
                          'ثانيًا:التشبيك  ',
                          style: Theme.of(context).textTheme.headline1!.copyWith(
                              fontSize: 22
                          ),

                        ),
                        Text(
                          '•	المشاركة والحوارات المجتمعية بين مؤسسات المجتمع المدني والدولة لتحسين أوضاع حقوق الإنسان عن طريق التوصيات والمخرجات المطروحة أثناء تلك الحوارات المشتركة.',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        Divider(
                          height: 2,
                          color: Colors.black,
                        ),
                        Text(
                          'ثالثًا: التثقيف والتوعية ',
                          style: Theme.of(context).textTheme.headline1!.copyWith(
                              fontSize: 22
                          ),

                        ),
                        Text(
                          '''•	حملة إعلامية ضخمة عبر جميع منصات التواصل الاجتماعي تشمل التعريف بحقوق الإنسان ( السياسية والاقتصادية والاجتماعية والثقافية) 
•	فيديوهات مصورة توضح كل حق من الحقوق وما يشتمل عليه وذلك بطريقة مبسطة للمستمع والقاريء
•	تدريبات تأهيلية تعمل على رفع قدرات الشباب لزيادة وعيهم 
•	تدشين نماذج محاكاة تشمل تبسيط وإيصال الحقوق المختلفة للأفراد داخل الكيانات والمؤسسات والجامعات
    '''
                              .trim(),
                          style: Theme.of(context).textTheme.subtitle1

                        ),
                        Divider(
                          height: 2,
                          color: Colors.black,
                        ),
                        Text(
                          'رابعًا: نافذة الشباب ',
                          style: Theme.of(context).textTheme.headline1!.copyWith(
                              fontSize: 22
                          ),

                        ),
                        Text(
                          'يأتي هذا المحور لتبني المبادرات الشبابية التي يتضمنها مشروع الاستراتيجية الوطنية لحقوق الإنسان حيث تعتبر أفكار الشباب كنز ثمين يجب دعمه لذا تقوم المبادرة بإطلاق نافذة الشباب لإستقبال الأفكار الإبداعية من الشباب والتي تقع في نطاق الاستراتيجية الوطنية لحقوق الإنسان على أن تتسم هذه المبادرات  بطابعها الريادي والمستدام إلى جانب تكاتف جهود الشباب. ',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        Divider(
                          height: 2,
                          color: Colors.black,
                        ),
                        Text(
                          'خامسًا:التأهيل الإعلامي. ',
                          style: Theme.of(context).textTheme.headline1!.copyWith(
                              fontSize: 22
                          ),

                        ),
                        Text(
                          '''تضطلع  وسائل الإعلام بدور مهم وحيوي في نشر وتعزيز ثقافة حقوق الإنسان يتمثل في: 
•	إنتاج أطر إعلامية جديدة وموضوعية تخدم حقوق الإنسان، إلى جانب تمكين الشباب من إسماع أصواتهم في وسائل الإعلام و المجتمع و الأوساط السياسية 
•	تعريف كل فرد بحقوقه وطرق حمايتها وملاحقة منتهكيها بشكل يضمن لكل فرد أو مجموعة حق اختيار سبل صون كرامتهم.
•	التأكيد على الترابط بين الحقوق كافة، وبناء وتشكيل الرأي العام.
•	الدور الرقابي  من خلال توفير المعلومات وإثارة القضايا، والتعريف بمبادئ حقوق الإنسان، وآليات حمايتها، ونشر ثقافتها.
•	إعداد تدريبات متنوعة تعمل على توحيد المفاهيم المستخدمة لدي الإعلامين عند التطرق لملف حقوق الإنسان وذلك من أجل توحيد الجهود
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
        Padding(
          padding: const EdgeInsets.only(right: 20, left: 20, bottom: 10),
          child: Card(
            color: Theme.of(context).primaryColor,
            child: Column(
              children: <Widget>[
                Text(
                  'مرصد الإستراتيجية الوطنية لحقوق الإنسان ',
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
                      '''يأتي تدشين المرصد الخاص بالإستراتيجية الوطنية لحقوق الإنسان إنطلاقًا من دور المجتمع المدني كشريك للدولة في تنفيذ الإستراتيجية بإعتباره شريك رئيسي في عملية التنمية وحلقة وصل بين أفراد المجتمع والدولة حيث يعمل المرصد كآلية متابعة لمسارات تنفيذ الإستراتيجية  وتقييم الخطط والبرامج التي يتم تنفيذها في ضوء الإستراتيجية بجانب الخروج بأوراق عمل وتقارير دورية تعكس أوضاع حقوق الإنسان لدى كافة شرائح المجتمع. 
الهدف من المرصد 
•	تعزيز الحق في المعرفة من خلال رفع وعي المواطنيين بحقوق الإنسان. 
•	بناء شبكة من الخبراء والمتخصصين في مجال حقوق الإنسان. 
•	توفير بيانات دقيقية وموثوقة حول  مسارات تنفيذ الإستراتيجية.
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
