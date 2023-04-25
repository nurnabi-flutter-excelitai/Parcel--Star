 import 'indivisiul_bar.dart';

class Bardata{
   final double saturdayAmount;
   final double sundayAmount;
   final double mondayAmount;
   final double tuesdayAmount;
   final double wednesdayAmount;
   final double thursdayAmount;
   final double fridayAmont;

   Bardata(
      {
        required this.saturdayAmount,
      required this.sundayAmount,
      required this.mondayAmount,
      required this.tuesdayAmount,
      required this.wednesdayAmount,
      required this.thursdayAmount,
      required this.fridayAmont});


   List<IndividualBar > barData = [];

   //initilize bardat

void initilizeBarData(){
  barData = [
    IndividualBar(x: 0,y: saturdayAmount),
    IndividualBar(x: 1,y: sundayAmount),
    IndividualBar(x: 2,y: mondayAmount),
    IndividualBar(x: 3, y: tuesdayAmount),
    IndividualBar(x: 4,y: wednesdayAmount),
    IndividualBar(x: 5,y: thursdayAmount),
    IndividualBar(x: 6,y: fridayAmont),
  ];

}




}