import 'package:egyptianyouthcouncil/shared/component/cards.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MembersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appBar=AppBar(
      title: Text('الكوادر'),
    );
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: appBar,
        body: Column(
          children: [
            Container(
              height: (MediaQuery.of(context).size.height - appBar.preferredSize.height -MediaQuery.of(context).padding.top) *0.3,
              child: LayoutBuilder(
                builder: (context,constraints){
                  print( ' mmm${constraints.maxHeight.toInt()}');
                 return Stack(
                   children: [
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Container(
                           width: double.infinity,
                           height: constraints.maxHeight * 0.55,
                           child: Image.asset(
                             'assets/image/member/memberscreen.jpeg',
                             fit: BoxFit.cover,
                           ),
                         ),

                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 10),
                               child: Text(
                                 'د/ محمد ممدوح',
                                 style: Theme.of(context)
                                     .textTheme
                                     .headline1!.copyWith(
                                   fontSize: (constraints.maxHeight*0.15)
                                 ),
                               ),
                             ),
                             //SizedBox(height: 30,),
                             Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 10),
                               child: Text(
                                 'رئيس مجلس الامناء لمجلس الشباب المصري',
                                 style: Theme.of(context)
                                     .textTheme
                                     .subtitle1!.copyWith(fontSize:  (constraints.maxHeight*0.08)),
                               ),
                             ),
                           ],
                         ),
                       ],
                     ),
                     Positioned(
                       top: constraints.maxHeight * 0.27,
                       left: 10,
                       child: Container(
                           height: (constraints.maxHeight*0.65 ),
                           width:(constraints.maxHeight*0.65 ),
                           decoration: BoxDecoration(
                             shape: BoxShape.circle,
                           ),
                           child: CircleAvatar(
                               backgroundImage: AssetImage(
                                 'assets/image/member/doctor.jpeg',
                               ))),
                     ),

                   ],
                 );
                },

              ),
            ),






            Container(
              height: (MediaQuery.of(context).size.height - appBar.preferredSize.height -MediaQuery.of(context).padding.top) *0.7,

              child: Padding(
                padding: const EdgeInsets.all(10),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      mainAxisExtent: 220,
                  ),
                  itemBuilder: (context, index) => cardMember(
                    image: dateMember[index].nameImage,
                    ctx: context,
                    name:dateMember[index].name ,
                    work:dateMember[index].work
                  ),
                  itemCount: dateMember.length,
                  //physics: NeverScrollableScrollPhysics(),
                  //shrinkWrap: true,
                ),
              ),
            ) ],
        ),
      ),
    );
  }
}
class ModelMember{
  final String nameImage;
  final String name;
  final String work;

  ModelMember({required this.nameImage,required this.name,required this.work});
}
List<ModelMember> dateMember=[
  ModelMember(nameImage: 'assets/image/member/may.jpeg', name: 'مي عجلان', work: 'مديره وحده البحوث والدراسات'),
  ModelMember(nameImage: 'assets/image/member/mahmud mamduh.jpeg', name: 'محمود ممدوح', work: 'المدير الاداري'),
  ModelMember(nameImage: 'assets/image/member/wasem tarek.jpeg', name: 'وسيم طارق', work: 'مسئول الملف التكنولوجي و الصحي'),

  ModelMember(nameImage: 'assets/image/member/rashaa adel.jpeg', name: 'رشا عادل', work: 'مسئوله العلاقات العامه'),
  ModelMember(nameImage: 'assets/image/member/sulwan.jpeg', name: 'سلوان مهدي', work: 'مدير راديو المجلس'),

  ModelMember(nameImage: 'assets/image/member/maryan.jpeg', name: 'مريان منتصر', work: 'منسق مشروعات'),
  ModelMember(nameImage: 'assets/image/member/mary.jpeg', name: 'ماري', work: 'منسق اتصال'),

  ModelMember(nameImage: 'assets/image/member/batirshya.jpeg', name: 'باترشيا جورج', work: 'عضو لجنه البحوث'),
  ModelMember(nameImage: 'assets/image/member/heba.jpeg', name: 'هبه وائل', work: 'عضو لجنه البحوث'),
  ModelMember(nameImage: 'assets/image/member/fatma.jpeg', name: ' فاطمه توفيق', work: 'عضو لجنه البحوث'),

];
