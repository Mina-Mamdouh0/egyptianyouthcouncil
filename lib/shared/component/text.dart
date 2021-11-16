 import 'package:flutter/material.dart';

Widget text({
  required BuildContext context,
  required String title,
  required String subTitle,
}) {
  return Padding(
      padding: const EdgeInsets.only(right: 20,left: 20,bottom: 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            title,
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.headline1
          ),
        ),
        Text(
          subTitle,
          softWrap: true,
          overflow: TextOverflow.visible,
          textWidthBasis: TextWidthBasis.longestLine,
          textAlign: TextAlign.start,
          style:Theme.of(context).textTheme.subtitle1)
      ]));
}

Widget textWithImage({
  required BuildContext context,
  required String title,
  required Widget image,
  required String subTitle,
}) {
  return Padding(
      padding: const EdgeInsets.only(bottom: 10,left: 20,right: 20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            title,
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        image,
        Text(
          subTitle,
          softWrap: true,
          textAlign: TextAlign.start,
          style: Theme.of(context).textTheme.subtitle1
        ),
      ]));
}
 Widget textCard({
   required BuildContext context,
   required String title,
   required String subTitle,
 }) {
   return Padding(
     padding: const EdgeInsets.only(left: 10,right: 10),
     child: Container(
       width: double.infinity,
       child: Card(
         child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
           Padding(
             padding: const EdgeInsets.only(right: 10,left: 10),
             child: Text(title,
                 textAlign: TextAlign.start,
                 style: Theme.of(context).textTheme.headline1),
           ),
           Padding(
             padding: const EdgeInsets.only(right: 10,left: 10,bottom: 10),
             child: Text(subTitle,
                 softWrap: true,
                 overflow: TextOverflow.visible,
                 textWidthBasis: TextWidthBasis.longestLine,
                 textAlign: TextAlign.start,
                 style: Theme.of(context).textTheme.subtitle1),
           )
         ]),
       ),
     ),
   );
 }

 Widget textWithImageCard({
   required BuildContext context,
   required String title,
   required Widget image,
   required String subTitle,
 }) {
   return Padding(
     padding: const EdgeInsets.only(left: 10,right: 10),
     child: Container(
       width: double.infinity,
       decoration: BoxDecoration(color: Color(0XFF363636)),
       child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
         Padding(
           padding: const EdgeInsets.only(right: 10,left: 10),
           child: Text(
             title,
             textAlign: TextAlign.start,
             style: Theme.of(context).textTheme.headline1,
           ),
         ),
         Container(
           width: double.infinity,
           child: image,
           decoration: BoxDecoration(
               color: Colors.tealAccent
           ),
         ),
         Padding(
           padding: const EdgeInsets.only(right: 10,left: 10),
           child: Text(subTitle,
               softWrap: true,
               textAlign: TextAlign.start,
               style: Theme.of(context).textTheme.subtitle1),
         ),
       ]),
     ),
   );
 }