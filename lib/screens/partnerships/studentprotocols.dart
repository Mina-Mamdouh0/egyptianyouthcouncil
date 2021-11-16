//بروتوكولات طلابيه

import 'package:egyptianyouthcouncil/shared/component/cards.dart';
import 'package:flutter/material.dart';

class StudentProtocols extends StatelessWidget {
  const StudentProtocols({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        cardTable(ctx: context,
            conRes: true,
            name: 'فريق MSP Azhar',
            res: 'د/وسيم طارق'),
        cardTable(ctx: context,
            conRes: true,
            name: 'SKILL UP',
            res: 'أ/إسلام جهاد الدين '),
        cardTable(ctx: context,
            conRes: true,
            name: 'مبادرة خطوة ',
            res: 'أ/ حبيبة محمد يوسف'),
        cardTable(ctx: context,
            conRes: true,
            name: 'مؤسسة تحيا مصر ',
            res: 'أ/ احمد هشام '),
        cardTable(ctx: context,
            conRes: true,
            name: 'مركز شباب ميت قادوس',
            res: ' أ/ جمال الترامسي '),
        cardTable(ctx: context,
            conRes: true,
            name: 'اسرة ريتش كلية اداب جامعة القاهرة',
            res: 'أ/ابراهيم على ابراهيم'),
        cardTable(ctx: context,
            conRes: true,
            name: 'اسرة احنا المستقبل كاديمية الشروق',
            res: 'أ/ محمد رمضان أمين'),
        cardTable(ctx: context,
            conRes: true,
            name: 'فريق ALENS',
            res: 'أ/ أحمد يسر '),
        cardTable(ctx: context,
            conRes: true,
            name: 'اسرة مصريانو جامعة حلوان',
            res: 'أ/ عاصم هاني'),
        cardTable(ctx: context,
            conRes: true,
            name: 'قائمة في حب مصر إتجمعنا',
            res: 'أ/ محمد جيلاني '),
        cardTable(ctx: context,
            conRes: true,
            name: 'نشاط ITM بكلية التجارة جامعة القاهرة',
            res: 'أ/ محمود صابر '),
        cardTable(ctx: context,
            conRes: true,
            name: 'الفصل الطلابي بقسم  AAPGالجيولوجيا بكلية علوم جامعة حلوان ',
            res: 'أ/ أحمد على محمد '),
        cardTable(ctx: context,
            conRes: true,
            name: 'راديو علوم جامعة الازهر',
            res: 'أ/ أحمد جلال '),
      ],
    ));
  }
}
