import 'package:egyptianyouthcouncil/screens/fields/environment.dart';
import 'package:egyptianyouthcouncil/screens/fields/humanrights.dart';
import 'package:egyptianyouthcouncil/screens/fields/peaceandsecurity.dart';
import 'package:egyptianyouthcouncil/screens/fields/politicalparticipation.dart';
import 'package:egyptianyouthcouncil/screens/fields/woman.dart';
import 'package:egyptianyouthcouncil/shared/theme.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FieldsScreen extends StatefulWidget {
  @override
  _FieldsScreenState createState() => _FieldsScreenState();
}

class _FieldsScreenState extends State<FieldsScreen> {
  int num = 0;

  @override
  Widget build(BuildContext context) {
    List<String> nameScreen = [
      'السلام والامن',
      'العمل',
      'المشاركه السياسيه',
      'المرأه',
      'حقوق الانسان',
      'البيئه'
    ];
    return DefaultTabController(
      length: 5,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            appBar: AppBar(
              title: Text(nameScreen[num],
              style: TextStyle(

              ),),


              bottom: TabBar(
                indicatorColor: Color(0XFF0047AB),
                isScrollable: true,
                tabs: [
                  Row(
                    children: [
                      Icon(
                        Icons.security_outlined,
                        size: 20,
                      ),
                      Text(nameScreen[0])
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.people_outline_outlined,
                        size: 20,
                      ),
                      Text(nameScreen[2])
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.pregnant_woman_outlined,
                        size: 20,
                      ),
                      Text(nameScreen[3])
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.wb_incandescent_outlined,
                        size: 20,
                      ),
                      Text(nameScreen[4])
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.device_hub,
                        size: 20,
                      ),
                      Text(nameScreen[5])
                    ],
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                PeaceAndSecurity(),
                PoliticalParticipation(),
                Woman(),
                HumanRights(),
                Environment(),
              ],
            )),
      ),
    );
  }
}
