import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:parcel_star/const/app_color.dart';
import 'package:parcel_star/const/text_style.dart';
import 'package:parcel_star/model_class/bar_data.dart';

class ParcelStatementScreen extends StatefulWidget {
  const ParcelStatementScreen({Key? key}) : super(key: key);

  @override
  State<ParcelStatementScreen> createState() => _ParcelStatementScreenState();
}

class _ParcelStatementScreenState extends State<ParcelStatementScreen> {
  List<double> weeklySummer = [
    4.40,
    2.52,
    10.50,
    100.0,
    38.5,
    63.5,
    5.0,
  ];

  @override
  Widget build(BuildContext context) {
    Bardata myBarData = Bardata(
        saturdayAmount: weeklySummer[0],
        sundayAmount: weeklySummer[1],
        mondayAmount: weeklySummer[2],
        tuesdayAmount: weeklySummer[3],
        wednesdayAmount: weeklySummer[4],
        thursdayAmount: weeklySummer[5],
        fridayAmont: weeklySummer[6]);
    myBarData.initilizeBarData();

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
                                Text('1940 taka',
                                    style: myStyleInter(
                                        16,
                                        AppColor.appBalanceColor,
                                        FontWeight.w500))
                              ],
                            )
                          ],
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 400,
              child: BarChart(BarChartData(
                  maxY: 100,
                  minY: 0,
                  barGroups: myBarData.barData
                      .map((data) => BarChartGroupData(x: data.x, barRods: [
                            BarChartRodData(
                                toY: data.y, 
                                color: Colors.red, 
                                width: 20,
                                borderRadius: BorderRadius.circular(12)
                            )
                          ]))
                      .toList())),
            )
          ],
        ),
      ),
    );
  }
}
