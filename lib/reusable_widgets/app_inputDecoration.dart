

import 'package:flutter/material.dart';

InputDecoration appTextFormFiledInputDecoration() {
  return InputDecoration(
    contentPadding: EdgeInsets.only(left: 8),
    border: InputBorder.none,
    hintText: 'To Date',
    hintStyle: TextStyle(
      color: Colors.grey,
      fontSize:14,
      fontWeight: FontWeight.w400,
    ),
  );
}