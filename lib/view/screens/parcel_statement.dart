import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:parcel_star/const/app_color.dart';
import 'package:parcel_star/const/text_style.dart';
import 'package:parcel_star/view/componets/custom_barchart.dart';

class ParcelStatementScreen extends StatefulWidget {

   ParcelStatementScreen({Key? key}) : super(key: key);

  @override
  State<ParcelStatementScreen> createState() => _ParcelStatementScreenState();
}

class _ParcelStatementScreenState extends State<ParcelStatementScreen> {


  @override
  Widget build(BuildContext context) {


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
                              child: Center(
                                  child: Text(
                                'ID : 124578',
                                style: myStyleInter(
                                    14,
                                    AppColor.appProfileIdColor,
                                    FontWeight.w400),
                              )),
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
                            Row(
                              children: [
                                Text(
                                  'Balance :',
                                  style: myStyleInter(
                                      16,
                                      AppColor.appbarTextColor,
                                      FontWeight.w500),
                                ),
                                Expanded(
                                  child: Text('1940 taka',
                                      style: myStyleInter(
                                          16,
                                          AppColor.appBalanceColor,
                                          FontWeight.w500)),
                                )
                              ],
                            )
                          ],
                        ),
                      )),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 16,right: 16,top: 14),
              height: 463,
              decoration: const BoxDecoration(
                  color: AppColor.appPrimaryColor,
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Column(
                children: [
                  Container (
                    height: 52,
                    decoration: const BoxDecoration(
                      color: AppColor.appPrimaryColor,
                     borderRadius: BorderRadius.only(topLeft:Radius.circular(10),topRight: Radius.circular(10))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       Container(

                         decoration: BoxDecoration(
                           color: Colors.red,
                           image: DecorationImage(image: AssetImage( 'assests/images/parcelstaricon.png',),fit: BoxFit.contain)
                         ),
                       )
                      ],
                    ),
                  ),







                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 39,right: 39,top: 34),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                ///....................>>> Delivery Success Rate......<<

                                Column(

                                  children: [
                                    CustomBarChartWidget(value: 80,
                                      barChartForegroundColor: AppColor.barChartDelSucForgroundColor),

                                    SizedBox(height: 10,),
                                    Text('Delivery\nSucess\nRate',style: myStyleInter(12, AppColor.appSubTextColor,FontWeight.w700),textAlign: TextAlign.center,)
                                  ],

                                ),


                                ///....................>>> total pending. chart.......<<
                                Column(

                                  children: [
                                    CustomBarChartWidget(value: 10, barChartForegroundColor: AppColor.barCharTotalPendinForgroundColor,),
                                    SizedBox(height: 10,),
                                    Text('Total\nPending',style: myStyleInter(12, AppColor.appSubTextColor,FontWeight.w700),textAlign: TextAlign.center)
                                  ],
                                ),

                                ///....................>>> Assigned Parcel. chart.......<<
                                Column(

                                  children: [
                                    CustomBarChartWidget(value: 90, barChartForegroundColor: AppColor.barCharAsinPercelForgroundColor,),


                                    SizedBox(height: 10,),
                                    Text('Assigned\nParcel',style: myStyleInter(12, AppColor.appSubTextColor,FontWeight.w700),textAlign: TextAlign.center)
                                  ],
                                ),

                                ///....................>>> Cancel Parcel. chart.......<<
                                Column(

                                  children: [
                                    CustomBarChartWidget(value: 45, barChartForegroundColor: AppColor.barChartCancelParcelForgroundColor,),
                                    SizedBox(height: 10,),
                                    Text('Cancel\nParcel',style: myStyleInter(12, AppColor.appSubTextColor,FontWeight.w700),textAlign: TextAlign.center)
                                  ],
                                ),




                              ],
                            ),
                          ),

                        ],
                      ),

                    ),
                  )
                ],
              ),

            )

          ],
        ),
      ),
    );
  }
}
