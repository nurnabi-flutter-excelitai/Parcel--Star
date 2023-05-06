

import 'package:custom_pop_up_menu/custom_pop_up_menu.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Test screen'),),
      body: Center(
        child:Container(
          margin: EdgeInsets.only(right: 10, left: 10),
          child: CustomPopupMenu(
            menuBuilder: () => GestureDetector(
              child: Text('Click the button'),
              onLongPress: () {
                print("onLongPress");
              },
              onTap: () {
                print("onTap");
              },
            ),
            position: PreferredPosition.top,
            pressType: PressType.singleClick,
            barrierColor: Colors.transparent,
            child: Text('Hello'),


          ),
        ),
      ),
    );
  }
}
