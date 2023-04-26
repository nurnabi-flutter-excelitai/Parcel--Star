import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:parcel_star/const/app_color.dart';
import 'package:parcel_star/const/text_style.dart';

class CustomBarChartWidget extends StatefulWidget {
  dynamic value;
  Color barChartForegroundColor;
   CustomBarChartWidget({super.key,
     required this.value,
     required this.barChartForegroundColor
   });

  @override
  State<CustomBarChartWidget> createState() => _CustomBarChartWidgetState();
}

class _CustomBarChartWidgetState extends State<CustomBarChartWidget> {
  bool selected = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selected=true;
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
        width: 40,
        height: 200,
        decoration: const BoxDecoration(
            color: AppColor.appChartBackgroundColor,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50))
        ),
        child: Stack(

          children: <Widget>[
            AnimatedPositioned(
              width: selected ? 40.0 : 40.0,
              height: selected ? (200*widget.value/100) : 10.0,
              //height: selected ? (200*value/100) :10.0,
              bottom: selected ? 0.0 : 0.0,
              duration: const Duration(seconds: 3),
              curve: Curves.fastOutSlowIn,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selected = !selected;
                  });
                },
                child: Container(
                  decoration:  BoxDecoration(
                      color: widget.barChartForegroundColor,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50))
                  ),
                  child:  Center(child: Transform.rotate(
                      angle: -math.pi / 4,
                      child: Text(widget.value.toString()+'%',style: myStyleInter(12, Colors.white,FontWeight.w700))),),
                ),
              ),
            ),
          ],
        ),
      );

  }
}