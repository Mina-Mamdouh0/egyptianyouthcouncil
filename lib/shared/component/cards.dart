import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../theme.dart';


Widget layoutCard({
  required String image,
  required IconData icon,
  required String text,
  required BuildContext context,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5),
    child: Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                child: Image.asset(
                  image,
                  height: 125,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                top: 20,
                right: 20,
                child: Icon(
                  icon,
                  size: 30,
                  color: Colors.white,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              text,
              style: Theme.of(context).textTheme.headline1!.copyWith(
                fontSize: 20
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
Widget listTileAchievement({
  required BuildContext context,
  required String textTile,
  required String subTextTile,
}) {
  return ExpansionTile(
    childrenPadding: EdgeInsets.all(10),
    title: Text(
      textTile,
      style: TextStyle(
        fontSize: 15,
      ),
      softWrap: true,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    ),
    children: [
      Text(
        subTextTile,
        softWrap: true,
        overflow: TextOverflow.fade,
        style: TextStyle(color: Provider.of<ThemeNotifier>(context).lightTheme==true?Colors.black:Colors.white),
      ),
    ],
    collapsedIconColor:Provider.of<ThemeNotifier>(context).lightTheme==true? Colors.blue[900]:Colors.blue,
    collapsedTextColor:Provider.of<ThemeNotifier>(context).lightTheme==true?Colors.blue[900]:Colors.blue,
    textColor:Provider.of<ThemeNotifier>(context).lightTheme==true?Colors.black: Colors.white,
    iconColor:Provider.of<ThemeNotifier>(context).lightTheme==true?Colors.black :Colors.white,
    backgroundColor: Provider.of<ThemeNotifier>(context).lightTheme==true?Colors.blueGrey[200]:Colors.black38,
  );
}

Widget cardTable({
  required BuildContext ctx,
  required String name,
  String? brief,
  String? res,
  bool conBrief =false,
  bool conRes =false,
}){
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
    child: Card(
      color: Theme.of(ctx).primaryColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(text:TextSpan(children: [
              TextSpan(text: 'اسم الجهة : ',style: Theme.of(ctx).textTheme.headline1!.copyWith(
                fontSize: 18,fontWeight: FontWeight.bold
              )),
              TextSpan(text: name,style:Theme.of(ctx).textTheme.subtitle1),
            ]) ),
            (conBrief)?RichText(text:TextSpan(children: [
              TextSpan(text: 'نبذة عن الجهة : ',style: Theme.of(ctx).textTheme.headline1!.copyWith(
                  fontSize: 18,fontWeight: FontWeight.bold
              )),
              TextSpan(text: brief,style:Theme.of(ctx).textTheme.subtitle1),
            ]) ):Container(),
            (conRes)?RichText(text:TextSpan(children: [
              TextSpan(text: 'مسئول التواصل : ',style: Theme.of(ctx).textTheme.headline1!.copyWith(
                  fontSize: 18,fontWeight: FontWeight.bold
              )),
              TextSpan(text: res,style:Theme.of(ctx).textTheme.subtitle1),
            ]) ):Container(),
          ],
        ),
      ),
    ),
  );
}
Widget cardMember({
  required BuildContext ctx,
  required String image,
  required String name,
  required String work,
}){
  return Container(
    width: 150,
    //height: 200,
    color:Theme.of(ctx).primaryColor,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 10,),
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20)
          ),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(20)
              ,child: Image.asset(image,fit: BoxFit.fill,)),
        ),
        /*CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage(image),
        ),*/
        SizedBox(height: 5,),
        Text(name,textAlign: TextAlign.center,style: Theme.of(ctx).textTheme.headline1!.copyWith(fontSize: 20),),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Text(work,textAlign: TextAlign.center,style: Theme.of(ctx).textTheme.subtitle1),
        ),
      ],
    ),
  );
}

