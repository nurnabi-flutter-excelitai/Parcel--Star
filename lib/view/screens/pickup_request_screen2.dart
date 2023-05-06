import 'package:custom_pop_up_menu/custom_pop_up_menu.dart';
import 'package:flutter/material.dart';

import '../../const/app_color.dart';
import '../../const/text_style.dart';

class PickUpRequestScreen2 extends StatefulWidget {
  const PickUpRequestScreen2({Key? key}) : super(key: key);

  @override
  State<PickUpRequestScreen2> createState() => _PickUpRequestScreen2State();
}

class _PickUpRequestScreen2State extends State<PickUpRequestScreen2> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Pickup Request'),
      ),
      body: Center(
        child: CustomPopupMenu(
          menuBuilder: () => GestureDetector(
            child:  Container(
              width: size * (178 / 360),
              height: 77,
              color: AppColor.appPrimaryColor,
              child: Column(
                children: [
                  Text(
                    'Your parcel will be added on your panel ASAP ',
                    style: myStyleInter(
                        size * (12 / 360), Colors.white, FontWeight.w400),
                  ),

                  Text(
                    'ok',style: myStyleInter(
                      size * (12 / 360), Colors.white, FontWeight.w400),
                  )

                ],
              ),
            ),
            onLongPress: () {
              print("onLongPress");
            },
            onTap: () {
              //Navigator.pop(context);
            },
          ),
          position: PreferredPosition.top,
          pressType: PressType.singleClick,
          barrierColor: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.only(left: 26.0),
            child: Row(children: [
              Text(
                'Request Status :',
                style: myStyleInter(
                    size * (14 / 360), Color(0XFF666666), FontWeight.w400),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Pickup completed",
                style: myStyleInter(
                    size * (14 / 360), Color(0XFF17C13C), FontWeight.w700),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
