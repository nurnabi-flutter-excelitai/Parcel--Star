import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:parcel_star/const/app_color.dart';
import 'package:parcel_star/const/text_style.dart';
import 'package:parcel_star/view/componets/custom_barchart.dart';

class ParcelStatementScreen extends StatefulWidget {
  ParcelStatementScreen({Key? key}) : super(key: key);

  @override
  State<ParcelStatementScreen> createState() => _ParcelStatementScreenState();
}

class _ParcelStatementScreenState extends State<ParcelStatementScreen> {
  String? _chosenValue;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColor.appBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Parcel Statement',
          style: myStyleInter(18, AppColor.appbarTextColor, FontWeight.w500),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: AppColor.appbarIconColor,
            size: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            ///.........>>>profile container......<<.............

            Container(
              margin: EdgeInsets.all(16),
              height: MediaQuery.of(context).size.height * 0.180,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: AppColor.appContainerColor,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                children: [
                  Expanded(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25.0, top: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'assests/images/profile.png',
                            ),
                            Container(
                              height: 23,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      offset: Offset(1, 1),
                                      blurRadius: 1)
                                ],
                                color: AppColor.appContainerColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                              ),
                              child: FittedBox(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'ID : 124578',
                                    style: myStyleInter(
                                        14,
                                        AppColor.appProfileIdColor,
                                        FontWeight.w400),textAlign: TextAlign.center,
                                  ),
                                ),
                              )


                            )
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 7,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Hasib Enterprise',
                              style: myStyleInter(16, AppColor.appbarTextColor,
                                  FontWeight.w700),
                            ),
                            Text(
                              'Md. Hasibul Haque',
                              style: myStyleInter(14, AppColor.appSubTextColor,
                                  FontWeight.w400),
                            ),
                            Text(
                              '01234567891',
                              style: myStyleInter(14, AppColor.appSubTextColor,
                                  FontWeight.w400),
                            ),
                            FittedBox(
                              child: Row(
                                children: [
                                  Text(
                                    'Balance :',
                                    style: myStyleInter(
                                        16,
                                        AppColor.appbarTextColor,
                                        FontWeight.w500),
                                  ),
                                  Text('1940 taka',
                                      style: myStyleInter(
                                          16,
                                          AppColor.appBalanceColor,
                                          FontWeight.w500))
                                ],
                              ),
                            )
                          ],
                        ),
                      )),
                ],
              ),
            ),




            ///.........>> seconnd container.........<<


            Container(
              margin: EdgeInsets.only(left: 16, right: 16, top: 14),
              height: 472,
              width: size*(328/360),
              decoration: const BoxDecoration(
                  color: AppColor.appPrimaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                children: [
                  ///.......icon container..........
                  Container(
                    height: 52,
                    decoration: const BoxDecoration(
                        color: AppColor.appPrimaryColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, top: 8, bottom: 8),
                          child: Container(
                            height: 26,
                            width: size*(100/360),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                color: Colors.white,
                                image: DecorationImage(
                                    image: AssetImage(
                                      'assests/images/parcelstaricon.png',
                                    ),
                                    fit: BoxFit.contain)),
                          ),
                        ),

                        /// ..............>>>dropdown button.....<<...............



                        Padding(
                          padding:
                              EdgeInsets.only(right: 10.0, top: 7, bottom: 7),
                          child: DropdownButtonHideUnderline(
                              child: DropdownButton2(

                            items: <String>[
                              'Week Outcome',
                              'Monthly Outcome',
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: myStyleInter(12,
                                      AppColor.appButtonColor, FontWeight.w700),
                                ),
                              );
                            }).toList(),
                            value: _chosenValue,







                            hint: Text(
                              "Today Outcome",
                              style: myStyleInter(
                                  12, AppColor.appButtonColor, FontWeight.w700),
                            ),
                              /*  customButton: Row(
                                  children:const [

                                    Text(
                                      "References",
                                    ),
                                   Icon(
                                      Icons.plus_one,
                                      size: 12,
                                    ),
                                  ],
                                ),*/









                            onChanged: (value) {
                              setState(() {
                                _chosenValue = value;
                              });
                            },

                            ///......>>>.....dropdown button style  part ......<<

                            buttonStyleData: ButtonStyleData(

                              height: 28,
                               //width: size*(140/360),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              elevation: 2,
                            ),


                            dropdownStyleData: DropdownStyleData(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                color: Colors.white,
                              ),
                              elevation: 8,
                              scrollbarTheme: ScrollbarThemeData(
                                radius: const Radius.circular(40),
                                thickness: MaterialStateProperty.all<double>(6),
                                thumbVisibility:
                                    MaterialStateProperty.all<bool>(true),
                              ),
                            ),
                          )),
                        )
                      ],
                    ),
                  ),

                  ///..........................>> bar Chart Design....<<..........................



                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 39, right: 39, top: 34),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Color(0XFFC7C7C7),
                                    width: 1

                                  )
                                )
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  ///....................>>> Delivery Success Rate......<<
                                  CustomBarChartWidget(
                                      value: 80,
                                      barChartForegroundColor:
                                          AppColor.barChartDelSucForgroundColor),
                                  ///....................>>> total pending. chart.......<<
                                  CustomBarChartWidget(
                                      value: 30,
                                      barChartForegroundColor:
                                          AppColor.barCharTotalPendinForgroundColor),
                                  ///....................>>> Assigned Parcel. chart.......<<
                                  CustomBarChartWidget(
                                      value: 45,
                                      barChartForegroundColor:
                                          AppColor.barCharAsinPercelForgroundColor),

                                  ///....................>>> Cancel Parcel. chart.......<<
                                  CustomBarChartWidget(
                                      value: 65,
                                      barChartForegroundColor:
                                          AppColor.barChartCancelParcelForgroundColor),





                                ],
                              ),
                            ),
                          ),

                          SizedBox(height: 10,),

                          Padding(
                            padding: const EdgeInsets.only(
                                left: 39, right: 39,),
                            child: Row(

                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                ///......>>old code.<<......
                                /*Text('Delivery\nSucess\nRate',style: myStyleInter(12, AppColor.appSubTextColor,FontWeight.w700),textAlign: TextAlign.center,),
                                Text('Total\nPending',style: myStyleInter(12, AppColor.appSubTextColor,FontWeight.w700),textAlign: TextAlign.center),
                                Text('Assigned\nParcel',style: myStyleInter(12, AppColor.appSubTextColor,FontWeight.w700),textAlign: TextAlign.center),
                                Text('Cancel\nParcel',style: myStyleInter(12, AppColor.appSubTextColor,FontWeight.w700),textAlign: TextAlign.center)*/

                                Flexible(child: Text('Delivery\nSucess\nRate',style: myStyleInter(12, AppColor.appSubTextColor,FontWeight.w700),textAlign: TextAlign.center,)),
                                Flexible(child: Text('Total\nPending',style: myStyleInter(12, AppColor.appSubTextColor,FontWeight.w700),textAlign: TextAlign.center)),
                                Flexible(child: Text('Assigned\nParcel',style: myStyleInter(12, AppColor.appSubTextColor,FontWeight.w700),textAlign: TextAlign.center)),
                                Flexible(child: Text('Cancel\nParcel',style: myStyleInter(12, AppColor.appSubTextColor,FontWeight.w700),textAlign: TextAlign.center))


                              ],
                            ),
                          ),



                          SizedBox(height: 30,),


                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,

                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 10,
                                    width: 10,
                                    color: AppColor.barChartDelSucForgroundColor,
                                  ),
                                  SizedBox(height: 5,),


                                  Container(
                                    height: 10,
                                    width: 10,
                                    color: AppColor.barCharTotalPendinForgroundColor,
                                  ),
                                  SizedBox(height: 5,),



                                  Container(
                                    height: 10,
                                    width: 10,
                                    color: AppColor.barCharAsinPercelForgroundColor,
                                  ),
                                  SizedBox(height: 5,),


                                  Container(
                                    height: 10,
                                    width: 10,
                                    color: AppColor.barChartCancelParcelForgroundColor,
                                  ),


                                ],
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left: 15.0,right: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Total Delivered Parcel',style: myStyleInter(12, AppColor.parcelStatementPageTextColor,FontWeight.w700),),


                                    Text('Total Delivered Parcel',style: myStyleInter(12, AppColor.parcelStatementPageTextColor,FontWeight.w700),),


                                    Text('Total Assigned Parcel',style: myStyleInter(12, AppColor.parcelStatementPageTextColor,FontWeight.w700),),


                                    Text('Total Cancel Parcel',style: myStyleInter(12, AppColor.parcelStatementPageTextColor,FontWeight.w700),),
                                  ],
                                ),
                              ),
                              Column(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(':',style: myStyleInter(12, AppColor.barChartDelSucForgroundColor,FontWeight.w700)),
                                  Text(':',style: myStyleInter(12, AppColor.barChartDelSucForgroundColor,FontWeight.w700)),
                                  Text(':',style: myStyleInter(12, AppColor.barChartDelSucForgroundColor,FontWeight.w700)),
                                  Text(':',style: myStyleInter(12, AppColor.barChartDelSucForgroundColor,FontWeight.w700)),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Column(

                                  children: [
                                    Text('5000',style: myStyleInter(12, AppColor.barChartDelSucForgroundColor,FontWeight.w700),),
                                    Text('5000',style: myStyleInter(12, AppColor.barCharTotalPendinForgroundColor,FontWeight.w700),),
                                    Text('5000',style: myStyleInter(12, AppColor.barCharAsinPercelForgroundColor,FontWeight.w700),),
                                    Text('5000',style: myStyleInter(12, AppColor.barChartCancelParcelForgroundColor,FontWeight.w700),),
                                  ],
                                ),
                              )
                            ],
                          )








                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
