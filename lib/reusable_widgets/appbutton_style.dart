

 import 'package:flutter/material.dart';
import 'package:parcel_star/const/app_color.dart';

appButtonStyle(){
  return ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(AppColor.appButtonColor)
  );

 }