import 'package:egyptianyouthcouncil/screens/councilworkunits/mediaproduction.dart';
import 'package:egyptianyouthcouncil/screens/councilworkunits/projects.dart';
import 'package:egyptianyouthcouncil/screens/councilworkunits/researchandstudies.dart';
import 'package:egyptianyouthcouncil/screens/councilworkunits/young.dart';
import 'package:egyptianyouthcouncil/shared/component/morecomponent.dart';
import 'package:egyptianyouthcouncil/shared/network/remotle.dart';
import 'package:flutter/material.dart';

class UnitsScreen extends StatefulWidget {
  @override
  _UnitsScreenState createState() => _UnitsScreenState();
}

class _UnitsScreenState extends State<UnitsScreen> {
  int num = 0;

  @override
  Widget build(BuildContext context) {
    List<String> nameScreen = [
      'البحوث والدرسات',
      'الاعلام',
      'قطاع الشباب والنشء',
      'التكنولوجيا'
    ];
    return DefaultTabController(
      length: 4,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            appBar: AppBar(
              title: Text(nameScreen[num]),
              bottom: TabBar(
                isScrollable: true,
                onTap: (value) {
                  setState(() {
                    num = value;
                  });
                },
                tabs: [
                  Row(
                    children: [
                      Icon(
                        Icons.manage_search_outlined,
                      ),
                      Text(nameScreen[0])
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.subscriptions_outlined,
                      ),
                      Text(nameScreen[1])
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.connect_without_contact_outlined,
                      ),
                      Text(nameScreen[2])
                    ],
                  ),
                  Row(
                    children: [Icon(Icons.link_outlined), Text(nameScreen[3])],
                  ),
                ],
              ),


            ),
            body: TabBarView(
              children: [
                ResearchAndStudies(),
                MediaProduction(),
                SocialMediaManagement(),
                Projects(),
              ],
            )),
      ),
    );
  }
}
