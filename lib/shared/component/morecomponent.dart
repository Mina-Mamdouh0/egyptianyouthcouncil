

import 'package:egyptianyouthcouncil/shared/theme.dart';
import 'package:flutter/material.dart';


// Widget useMaterialButton(
// {
//   required BuildContext context,
//   required String text,
//   required VoidCallback onPress,
// }) {
//   return MaterialButton(
//     onPressed: onPress,
//     elevation: 0.0,
//     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),
//     side: BorderSide(color: Colors.blue)),
//     //minWidth: double.infinity,
//     child: Text(
//       text,
//       style: TextStyle(
//         fontSize: 15,
//         color: Colors.blue,
//       ),
//     ),
//   );
// }

Widget useIconButton({
  Color? color,
  required VoidCallback onPress,
  required IconData icons,
}) {
  return IconButton(onPressed: onPress, icon: Icon(icons,color: color,));
}
navigatorPush(
    BuildContext ctx, {
      required Widget widget,
    }){
  return Navigator.push(
      ctx, MaterialPageRoute(builder: (ctx) => widget));
}
navigatorPushReplacement(
    BuildContext ctx, {
      required Widget widget,
    }){
  return Navigator.pushReplacement(
      ctx, MaterialPageRoute(builder: (ctx) => widget));
}
