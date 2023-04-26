
import 'package:flutter/material.dart';

class BarchartScreen extends StatefulWidget {
  const BarchartScreen({super.key});

  @override
  State<BarchartScreen> createState() => _BarchartScreenState();
}

class _BarchartScreenState extends State<BarchartScreen> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Container(
        height: 400,
        width: double.infinity,

        child: Padding(
          padding:EdgeInsets.only(left: 26,right: 26),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(

                children: [
                  Container(
                    height: 200,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50))
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          bottom: 0,
                          right: 0,
                          child: Container(
                            height: 100,
                            width: 40,
                            color: Colors.black,
                            child: Text('80 %',style: TextStyle(fontSize: 14,color: Colors.white),),
                          ),
                        )
                      ],
                    ),

                  ),
                  SizedBox(height: 10,),

                ],
              ),
              Column(

                children: [
                  Container(
                    height: 200,
                    width: 40,
                    color: Colors.green,
                  ),
                  SizedBox(height: 10,),
                  Text('Total\nPending',style: TextStyle(fontSize: 14),textAlign: TextAlign.center)
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 200,
                    width: 40,
                    color: Colors.green,
                  ),
                  SizedBox(height: 10,),
                  Text('Assigned\n Parcel',style: TextStyle(fontSize: 14),textAlign: TextAlign.center)
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 200,
                    width: 40,
                    color: Colors.green,
                  ),
                  SizedBox(height: 10,),
                  Text('Cancel\n Parcel',style: TextStyle(fontSize: 14),textAlign: TextAlign.center)
                ],
              ),


            ],
          ),
        ),
      ),
    );

      /*Center(
      child: SizedBox(
        width: 200,
        height: 350,
        child: Center(
          child: Stack(

            children: <Widget>[
              AnimatedPositioned(
                width: 50,
                height: selected ? 50.0 : 25.0,
                bottom: selected ? 150.0 : 0.0,

                // bottom: 0.0,
                duration: const Duration(seconds: 2),
                curve: Curves.fastOutSlowIn,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selected = !selected;
                    });
                  },
                  child: Container(
                    color: Colors.blue,
                    child: const Center(child: Text('Tap me',style: TextStyle(fontSize: 15),)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );*/
  }
}
