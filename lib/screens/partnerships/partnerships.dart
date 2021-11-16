//main شركات

import 'package:egyptianyouthcouncil/screens/fields/peaceandsecurity.dart';
import 'package:egyptianyouthcouncil/screens/fields/politicalparticipation.dart';
import 'package:egyptianyouthcouncil/screens/partnerships/associationprotocols.dart';
import 'package:egyptianyouthcouncil/screens/partnerships/partnership.dart';
import 'package:egyptianyouthcouncil/screens/partnerships/studentprotocols.dart';
import 'package:flutter/material.dart';

class PartnerShipScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List<String> nameScreen = [
      'الشراكات',
      'بروتكولات طلابيه',
      'بروتكولات جمعيات',
    ];

    return DefaultTabController(
      length: 3,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            appBar: AppBar(
              title: Text('الشراكات'),
              elevation: 0.0,
              bottom: TabBar(
                isScrollable: true,
                indicatorColor: Colors.black,
                tabs: [
                  Text(nameScreen[0]),
                  Text(nameScreen[1]),
                  Text(nameScreen[2]),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                PartnerShip(),
                StudentProtocols(),
                AssociationProtocols(),
              ],
            )),
      ),
    );
  }
}
