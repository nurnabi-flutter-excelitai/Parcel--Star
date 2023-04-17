

import 'package:flutter/material.dart';
import 'package:parcel_star/const/app_color.dart';
import 'package:parcel_star/const/text_style.dart';

class StatementScreenContainer extends StatelessWidget {
  const StatementScreenContainer({
    super.key,
    required this.text,
    required this.color,
    required this.num,
  });

  final String text;
  final Color color;
  final  String  num ;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 17.0),
              child: Text(text,style: myStyleInter(14, AppColor.statementScreenTextColor,FontWeight.w400),),
            ),
            SizedBox(height: 3,),
            Text(num,style: myStyleInter(14, AppColor.statementScreenTextColor,FontWeight.w700),)
          ],
        ),
      ),
    );
  }
}