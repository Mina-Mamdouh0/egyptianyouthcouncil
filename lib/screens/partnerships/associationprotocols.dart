
import 'package:egyptianyouthcouncil/shared/component/cards.dart';
import 'package:flutter/material.dart';

class AssociationProtocols extends StatelessWidget {
  const AssociationProtocols({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          cardTable(ctx: context,
              conRes: true,
              name: 'حزب المواجهة ',
              res: 'م/ حسن احمد احمد'),
          cardTable(ctx: context,
              conRes: true,
              name: 'جمعية الحرية والمواطنة',
              res: 'الرئيس حرمه ببانة '),
          cardTable(ctx: context,
              conRes: true,
              name: 'الاتحاد العام للطلبة الافارقة بجمهورية مصر العربية',
              res: 'أ/ جدة ادريس عبدالله'),
          cardTable(ctx: context,
              conRes: true,
              name: 'مبادرة الامل للثقافة للثقافة والفنون السورية',
              res: 'أ/ عبدالرحمن نورة'),
          cardTable(ctx: context,
              conRes: true,
              name: 'اتحاد طلاب دولة نيجريا',
              res: 'أ/ عبدالله كجاما'),
          cardTable(ctx: context,
              conRes: true,
              name: 'الاتحاد العام لدولة بنين',
              res: 'أ/ يوسيف عيسي'),
          cardTable(ctx: context,
              conRes: true,
              name: 'الجالية المورتنانية بجمهورية مصر العربية',
              res: 'أ/الزعيم محمد الأمين  '),
          cardTable(ctx: context,
              conRes: true,
              name: 'سكرتارية الشياب بالاتحاد العام لعمال مصر ',
              res: 'أ/محمد حسن ربيع '),
          cardTable(ctx: context,
              conRes: true,
              name: 'جمعية الحرية والمواطنة',
              res: 'أ/ الزعيم حرمه ببانة '),
          cardTable(ctx: context,
              conRes: true,
              name: 'حملة المحليات للشباب محافظة الجيزة',
              res: 'أ/سيد حسني احمد '),
          cardTable(ctx: context,
              conRes: true,
              name: 'القائمة الوطنية الموحدة للمحليات',
              res: 'أ/ هاني طلعت سعد '),
        ],
      )
    );
  }
}
