
 import 'package:flutter/material.dart';
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

  check(String pickupStatus) {
    if (pickupStatus == "Pickup Completed") {
      return true;
    }
  }

  @override
  void initState() {
    super.initState();
  }

  Map <String,dynamic> map = {"Request Status":"Pickup Completed"};




   @override
   Widget build(BuildContext context) {
     final size = MediaQuery.of(context).size.width;
     return Scaffold(
       appBar: AppBar(title: const Text('Pickup Request'),),
       body: Center(
         child: Padding(
           padding: const EdgeInsets.only(left: 26.0),
           child: Row(
             //mainAxisAlignment: MainAxisAlignment.spaceAround,

             children: [
               Text('Request Status :',style: myStyleInter(size*(14/360), Color(0XFF666666),FontWeight.w400),),
               SizedBox(width: 5,),
               Text(check(pickupStatus)==true? "Pickup completed":"false",style: myStyleInter(size*(14/360), Color(0XFF17C13C),FontWeight.w700),),

               check(pickupStatus)==true?
               ExampleWidget(): SizedBox(),

               // TextButton(onPressed: (){
               //  check(pickupStatus)==false? _showPositionalDialog(): null;
               // }, child: Text('Pick up completed',style: myStyleInter(size*(14/360), Color(0XFF17C13C),FontWeight.w700)))
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
                  child: Text('Positional Alert Dialog',style: myStyleInter(14, Color(0XFF17C13C),FontWeight.w700)),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
 }
