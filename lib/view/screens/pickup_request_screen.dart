import 'dart:math';

import 'package:flutter/material.dart';
import 'package:parcel_star/const/app_color.dart';
import 'package:parcel_star/const/text_style.dart';
import 'package:parcel_star/view/componets/test.dart';

class PickUpRequestScreen extends StatefulWidget {
  const PickUpRequestScreen({Key? key}) : super(key: key);

  @override
  State<PickUpRequestScreen> createState() => _PickUpRequestScreenState();
}

class _PickUpRequestScreenState extends State<PickUpRequestScreen> {
  bool isPickUpStatus = true;
  String pickupStatus = "Pickup Completed";
  bool _isContainerVisible = false;


  check(String pickupStatus) {
    if (pickupStatus == "Pickup Completed") {
      return true;
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Random random = Random();
    final size = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pickup Request'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30.0),
        child: Center(
          child: Column(
           //crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,

            children: [



              Stack(

                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    left: 150,
                    bottom: 77,
                    child: Visibility(
                      visible: _isContainerVisible,
                      child:
                      Container(
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
                                  setState(() {


                                  });
                                },
                                child: Text('Ok',
                                    style: myStyleInter(size * (12 / 360),
                                        Colors.white, FontWeight.w400)))
                          ],
                        ),
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Request Status :',
                          style: myStyleInter(
                              size * (14 / 360), Color(0XFF666666), FontWeight.w400),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        TextButton(
                            onPressed: () {
                              setState(() {


                                _isContainerVisible = true;

                              });
                            },
                            child: Text(
                              "Pickup completed",
                              style: myStyleInter(size * (14 / 360),
                                  Color(0XFF17C13C), FontWeight.w700),
                            )),
                      ],
                    ),
                  ),

                  // TextButton(
                  //   onPressed: () {
                  //     setState(() {
                  //       _isContainerVisible = true;
                  //     });
                  //   },
                  //   child: Text('Click Me'),
                  // ),
                ],
              ),






              // Stack(
              //
              //   clipBehavior: Clip.none,
              //   children: [
              //     Positioned(
              //       left: 150,
              //       bottom: 77,
              //       child: Visibility(
              //         visible: _isContainerVisible,
              //         child: Container(
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
              //               TextButton(
              //                   onPressed: () {
              //                     setState(() {
              //
              //
              //                     });
              //                   },
              //                   child: Text('Ok',
              //                       style: myStyleInter(size * (12 / 360),
              //                           Colors.white, FontWeight.w400)))
              //             ],
              //           ),
              //         ),
              //       ),
              //     ),
              //
              //     Align(
              //       alignment: Alignment.bottomCenter,
              //       child: Row(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           Text(
              //             'Request Status :',
              //             style: myStyleInter(
              //                 size * (14 / 360), Color(0XFF666666), FontWeight.w400),
              //           ),
              //           SizedBox(
              //             width: 5,
              //           ),
              //           TextButton(
              //               onPressed: () {
              //                 setState(() {
              //
              //
              //                   _isContainerVisible = true;
              //
              //                 });
              //               },
              //               child: Text(
              //                 "Pickup completed",
              //                 style: myStyleInter(size * (14 / 360),
              //                     Color(0XFF17C13C), FontWeight.w700),
              //               )),
              //         ],
              //       ),
              //     ),
              //
              //     // TextButton(
              //     //   onPressed: () {
              //     //     setState(() {
              //     //       _isContainerVisible = true;
              //     //     });
              //     //   },
              //     //   child: Text('Click Me'),
              //     // ),
              //   ],
              // ),
              // Stack(
              //
              //   clipBehavior: Clip.none,
              //   children: [
              //     Positioned(
              //       left: 150,
              //       bottom: 77,
              //       child: Visibility(
              //         visible: _isContainerVisible,
              //         child: Container(
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
              //               TextButton(
              //                   onPressed: () {
              //                     setState(() {
              //
              //
              //                     });
              //                   },
              //                   child: Text('Ok',
              //                       style: myStyleInter(size * (12 / 360),
              //                           Colors.white, FontWeight.w400)))
              //             ],
              //           ),
              //         ),
              //       ),
              //     ),
              //
              //     Align(
              //       alignment: Alignment.bottomCenter,
              //       child: Row(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           Text(
              //             'Request Status :',
              //             style: myStyleInter(
              //                 size * (14 / 360), Color(0XFF666666), FontWeight.w400),
              //           ),
              //           SizedBox(
              //             width: 5,
              //           ),
              //           TextButton(
              //               onPressed: () {
              //                 setState(() {
              //
              //
              //                   _isContainerVisible = true;
              //
              //                 });
              //               },
              //               child: Text(
              //                 "Pickup completed",
              //                 style: myStyleInter(size * (14 / 360),
              //                     Color(0XFF17C13C), FontWeight.w700),
              //               )),
              //         ],
              //       ),
              //     ),
              //
              //     // TextButton(
              //     //   onPressed: () {
              //     //     setState(() {
              //     //       _isContainerVisible = true;
              //     //     });
              //     //   },
              //     //   child: Text('Click Me'),
              //     // ),
              //   ],
              // ),

            ],
          ),
        ),
      ),
    );
  }

  void _showPositionalDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Stack(
          children: <Widget>[
            Positioned(
              top: 300,
              left: 150.0,
              child: Container(
                width: 200.0,
                height: 100.0,
                color: Color(0XFF0B4461),
                child: Center(
                  child: Text('Positional Alert Dialog',
                      style:
                          myStyleInter(14, Color(0XFF17C13C), FontWeight.w700)),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
//
//
// class HomeScreen extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return _HomeScreen();
//   }
// }
//
// class _HomeScreen extends State<HomeScreen> {
//   bool isDialog = false;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Home"),
//         ),
//         body: SafeArea(
//             top: true,
//             bottom: true,
//             child: Stack(
//               children: <Widget>[
//                 Container(
//                     color: Colors.white,
//                     child: Align(
//                       alignment: Alignment.center,
//                       child: Column(
//                         children: <Widget>[
//                           // Container(
//                           //   color: Colors.pink,
//                           //   width: double.infinity,
//                           //   height: MediaQuery.of(context).size.height * 0.4,
//                           // ),
//                           SizedBox(
//                             height: 10.0,
//                           ),
//                           ElevatedButton(
//                               onPressed: () {
//                                 setState(() {
//                                   isDialog = true;
//                                 });
//                               },
//                               child: Text("Open Dialog")),
//                         ],
//                       ),
//                     )),
//                 Positioned.fill(
//                   child: Align(
//                     alignment: Alignment.centerRight,
//                     child: isDialog ? transparentWidget(context) : Container(),
//                   ),
//                 )
//               ],
//             )));
//   }
//
//   Widget transparentWidget(BuildContext context) {
//     return Container(
//       color:  const Color(0x4D2980b9),
//       width: double.infinity,
//       height: double.infinity,
//       child: Align(
//           alignment: Alignment.center,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Container(
//                 decoration: BoxDecoration(
//                     color: Colors.green,
//                     borderRadius: BorderRadius.only(
//                       topLeft: const Radius.circular(40.0),
//                       topRight: const Radius.circular(40.0),
//                       bottomLeft: const Radius.circular(40.0),
//                       bottomRight: const Radius.circular(40.0),
//                     )),
//                 child: Center(
//                   child: Text("Your sheet"),
//                 ),
//                 height: MediaQuery.of(context).size.height * 0.5,
//                 width: MediaQuery.of(context).size.width * 0.8,
//               ),
//               ElevatedButton(
//                   onPressed: () {
//                     setState(() {
//                       isDialog = false;
//                     });
//                   },
//                   child: Text("Cancel"))
//             ],
//           )),
//     );
//   }
// }
