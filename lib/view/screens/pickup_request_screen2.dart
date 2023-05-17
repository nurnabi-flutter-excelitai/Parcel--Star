import 'package:custom_pop_up_menu/custom_pop_up_menu.dart';
import 'package:flutter/material.dart';
import 'package:parcel_star/view/screens/parcel_statement.dart';

import '../../const/app_color.dart';
import '../../const/text_style.dart';

class PickUpRequestScreen2 extends StatefulWidget {
  const PickUpRequestScreen2({Key? key}) : super(key: key);

  @override
  State<PickUpRequestScreen2> createState() => _PickUpRequestScreen2State();
}

class _PickUpRequestScreen2State extends State<PickUpRequestScreen2> {
  CustomPopupMenuController controller = CustomPopupMenuController();
  CustomPopupMenuController controller2 = CustomPopupMenuController();
  bool isChecked = false;
  OverlayEntry? overlayEntry;




  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Pickup Request'),
        actions: [
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> ParcelStatementScreen()));
          }, child: Text('Next',style: TextStyle(color: Colors.white),))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomPopupMenu(
            controller: controller,
            menuBuilder: () => Container(
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

                  TextButton(
                    onPressed: () {
                      controller.hideMenu();

                    },
                    child: Text(
                      'ok',style: myStyleInter(
                        size * (12 / 360), Colors.white, FontWeight.w400),
                    ),
                  )

                ],
              ),
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
    //         CustomPopupMenu(
    //         controller: controller2,
    //         menuBuilder: () => Container(
    //           width: size * (178 / 360),
    //           height: 77,
    //           color: AppColor.appPrimaryColor,
    //           child: Column(
    //             children: [
    //               Text(
    //                 'Your parcel will be added on your panel ASAP ',
    //                 style: myStyleInter(
    //                     size * (12 / 360), Colors.white, FontWeight.w400),
    //               ),
    //
    //               TextButton(
    //                 onPressed: () {
    //                   controller2.hideMenu();
    //
    //                 },
    //                 child: Text(
    //                   'ok',style: myStyleInter(
    //                     size * (12 / 360), Colors.white, FontWeight.w400),
    //                 ),
    //               )
    //
    //             ],
    //           ),
    //         ),
    //
    //
    //
    //
    //
    //
    //
    //
    //
    //
    //         position: PreferredPosition.top,
    //         pressType: PressType.singleClick,
    //         barrierColor: Colors.transparent,
    //         child: Padding(
    //           padding: const EdgeInsets.only(left: 26.0),
    //           child: Row(children: [
    //             Text(
    //               'Request Status :',
    //               style: myStyleInter(
    //                   size * (14 / 360), Color(0XFF666666), FontWeight.w400),
    //             ),
    //             SizedBox(
    //               width: 5,
    //             ),
    //             Text(
    //               "Pickup completed",
    //               style: myStyleInter(
    //                   size * (14 / 360), Color(0XFF17C13C), FontWeight.w700),
    //             )
    //           ]),
    //         ),
    // ),


          ],
        ),
      )



    );
  }
}
