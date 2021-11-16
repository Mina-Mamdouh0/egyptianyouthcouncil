import 'package:egyptianyouthcouncil/shared/component/text.dart';
import 'package:expand_widget/expand_widget.dart';
import 'package:flutter/material.dart';

class Environment extends StatelessWidget {
  const Environment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          text(
            context: context,
            title: 'قطاع البيئة  ',
            subTitle: '''•البرنامج الوطني لتعزيز الوعي البيئي
•	شركاء في المناخ  
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
                    'البرنامج الوطني لتعزيز الوعي البيئي',
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
                        'تعتبر القضايا البيئية من القضايا الحيوية التي تحيط بعالم اليوم خاصة بعد تفاقم مشكلات الاحتباس الحرارى و التغيرات المناخية و ارتفاع درجة حرارة الأر ض. لذا، فانه من الضرورى العمل على توعية القطاعات المختلفة في المجتمع المصرى بهذه القضايا الهامة التي من الممكن ان تؤثر على الواقع المجتمعى و كيف ننظر لحلول هذه المشكلات في المستقبل القريب حتى تتوافق مع الأهداف الوطنية والمجتمعية المصرية لذا دشن مجلس الشباب المصري هذا البرنامج لتوعيتهم بالأمور البيئية من مختلف النواحى الاقتصادية، الاجتماعية، و التقنية من اجل بناء طريقة للتكامل المنظومى بين هذه الجوانب المختلفة من اجل اتخاذ قرارات قليلة المخاطر على المجتمع، حيث يعمل المشروع على تعزيز و تعميق مفهوم التفكير المنظومى فى حل المشكلات التي تتطلب التكامل بين تخصصات وأبعاد مختلفة، وربط ذلك بالعلوم البينية',
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
                    'شركاء في المناخ  ',
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
                        'يعمل برنامج شركاء في المناخ والذي يتم تنفيذه بالتعاون مع مؤسسة فريدريش ناومان بمشاركة أعضاء مجلس النواب والأحزاب المصرية الممثلة برلمانيًا حيث يسعى البرنامج إلى وضع اجندة وطنية مشتركة بين الاحزاب السياسية ومنظمات المجتمع المدني فيما يتعلق بالتعامل والتكيف مع تغير المناخ والحد من اثاره السلبية في اطار المسئولية المشتركة للمجتمع المدني مع الحكومة في مواجهة التغيرات المناخية',
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
