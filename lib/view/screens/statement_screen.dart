import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:parcel_star/reusable_widgets/reusable_statementscreen_container.dart';

import '../../const/app_color.dart';
import '../../const/text_style.dart';
import '../../reusable_widgets/app_inputDecoration.dart';
import '../../reusable_widgets/appbutton_style.dart';
import '../componets/statement_table.dart';

class StatementScreen extends StatefulWidget {
  const StatementScreen({Key? key}) : super(key: key);

  @override
  State<StatementScreen> createState() => _StatementScreenState();
}

class _StatementScreenState extends State<StatementScreen> {
  DateTime selectedDate = DateTime.now();
  TextEditingController fromDateController = TextEditingController();
  TextEditingController toDateController = TextEditingController();

  ///..........fromDate Method............
  Future _selectedFromDate(BuildContext context) async {
    DateFormat formatter = DateFormat('dd/MM/yyyy');
    final DateTime? pickedFromDate = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2020),
        lastDate: DateTime(2030));
    if (pickedFromDate != null) {
      setState(() {
        selectedDate = pickedFromDate;
        fromDateController.value =
            TextEditingValue(text: formatter.format(pickedFromDate));
        //fromDateController.text = pickedFromDate.toString();
      });
    }
  }

  ///..........toDate Method............
  Future _selectedToDate(BuildContext context) async {
    DateFormat formatter = DateFormat('dd/MM/yyyy');
    final DateTime? pickedToDate = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2020),
        lastDate: DateTime(2030));
    if (pickedToDate != null) {
      setState(() {
        selectedDate = pickedToDate;
        toDateController.value =
            TextEditingValue(text: formatter.format(pickedToDate));
        //fromDateController.text = pickedFromDate.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      //backgroundColor: AppColor.appBackgroundColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            'Statement',
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
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 16.0, right: 16, top: 20, bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ........first row .............

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Container(
                        padding: EdgeInsets.only(top: 10,bottom: 12),
                        width: size * (158 / 360),
                        //height: size*(160/800),
                        decoration: const BoxDecoration(
                            color: Color(0XFFF3F4F6),
                            borderRadius:
                            BorderRadius.all(Radius.circular(10))),

                        child: Column(
                          children: [
                            Text(
                              'MERCHANT INFORMATION',
                              style: myStyleInter(
                                  size * (14 / 360),
                                  AppColor.statementScreenTextColor,
                                  FontWeight.w700),
                            ),

                            Container(
                              margin: EdgeInsets.only(top: 8,left: 6,right: 6),
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.7),
                                  border: Border.all(width: 0.07)),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10.0,top: 13,bottom: 8),
                                child: Column(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      // mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          children: [
                                            const CircleAvatar(
                                              radius: 5,
                                              backgroundColor: Colors.red,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0),
                                              child: Text(
                                                'Merchant Name',
                                                style: myStyleInter(
                                                    size * (14 / 360),
                                                    AppColor
                                                        .statementScreenTextColor,
                                                    FontWeight.w400),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Center(
                                          child: Text(
                                            'MD. HASIB',
                                            style: myStyleInter(
                                                size * (14 / 360),
                                                AppColor
                                                    .statementScreenTextColor,
                                                FontWeight.w700),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: size*(8/360),),

                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      // mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          children: [
                                            const CircleAvatar(
                                              radius: 5,
                                              backgroundColor: Colors.red,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0),
                                              child: Text(
                                                'Merchant Name',
                                                style: myStyleInter(
                                                    size * (14 / 360),
                                                    AppColor
                                                        .statementScreenTextColor,
                                                    FontWeight.w400),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Center(
                                          child: Text(
                                            'MD. HASIB',
                                            style: myStyleInter(
                                                size * (14 / 360),
                                                AppColor
                                                    .statementScreenTextColor,
                                                FontWeight.w700),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),





                   SizedBox(width: size*(12/360),),


                      // Container(
                      //   padding: EdgeInsets.only(top: 10),
                      //   width: size * (158 / 360),
                      //   //height: size*(160/800),
                      //   decoration: BoxDecoration(
                      //       color: Color(0XFFF3F4F6),
                      //       borderRadius:
                      //       BorderRadius.all(Radius.circular(10))),
                      //
                      //   child: Column(
                      //     children: [
                      //       Text(
                      //         'MERCHANT INFORMATION',
                      //         style: myStyleInter(
                      //             size * (14 / 360),
                      //             AppColor.statementScreenTextColor,
                      //             FontWeight.w700),
                      //       ),
                      //       SizedBox(
                      //         height: 8,
                      //       ),
                      //       Padding(
                      //         padding: EdgeInsets.only(
                      //             left: 6, right: 6, bottom: 10),
                      //         child: Container(
                      //           decoration: BoxDecoration(
                      //               color: Colors.white.withOpacity(0.7),
                      //               border: Border.all(width: 0.07)),
                      //           child: Padding(
                      //             padding: const EdgeInsets.only(
                      //                 left: 10.0, top: 8),
                      //             child: Column(
                      //               children: [
                      //                 Column(
                      //                   crossAxisAlignment:
                      //                   CrossAxisAlignment.start,
                      //                   // mainAxisAlignment: MainAxisAlignment.center,
                      //                   children: [
                      //                     Row(
                      //                       children: [
                      //                         const CircleAvatar(
                      //                           radius: 5,
                      //                           backgroundColor: Colors.red,
                      //                         ),
                      //                         Padding(
                      //                           padding: const EdgeInsets.only(
                      //                               left: 8.0),
                      //                           child: Text(
                      //                             'Merchant Name',
                      //                             style: myStyleInter(
                      //                                 size * (14 / 360),
                      //                                 AppColor
                      //                                     .statementScreenTextColor,
                      //                                 FontWeight.w400),
                      //                           ),
                      //                         ),
                      //                       ],
                      //                     ),
                      //                     Padding(
                      //                       padding: const EdgeInsets.only(
                      //                         left: 30.0,
                      //                       ),
                      //                       child: Text(
                      //                         'MD. HASIB',
                      //                         style: myStyleInter(
                      //                             size * (14 / 360),
                      //                             AppColor
                      //                                 .statementScreenTextColor,
                      //                             FontWeight.w700),
                      //                       ),
                      //                     ),
                      //                   ],
                      //                 ),
                      //                 const SizedBox(
                      //                   height: 14,
                      //                 ),
                      //                 Column(
                      //                   crossAxisAlignment:
                      //                   CrossAxisAlignment.start,
                      //                   // mainAxisAlignment: MainAxisAlignment.center,
                      //                   children: [
                      //                     Row(
                      //                       children: [
                      //                         const CircleAvatar(
                      //                           radius: 5,
                      //                           backgroundColor: Colors.red,
                      //                         ),
                      //                         Padding(
                      //                           padding: const EdgeInsets.only(
                      //                               left: 8.0),
                      //                           child: Text(
                      //                             'Merchant Name',
                      //                             style: myStyleInter(
                      //                                 size * (14 / 360),
                      //                                 AppColor
                      //                                     .statementScreenTextColor,
                      //                                 FontWeight.w400),
                      //                           ),
                      //                         ),
                      //                       ],
                      //                     ),
                      //                     Padding(
                      //                       padding: const EdgeInsets.only(
                      //                         left: 30.0,
                      //                       ),
                      //                       child: Text(
                      //                         'MD. HASIB',
                      //                         style: myStyleInter(
                      //                             size * (14 / 360),
                      //                             AppColor
                      //                                 .statementScreenTextColor,
                      //                             FontWeight.w700),
                      //                       ),
                      //                     ),
                      //                   ],
                      //                 ),
                      //               ],
                      //             ),
                      //           ),
                      //         ),
                      //       )
                      //     ],
                      //   ),
                      // ),





                      Container(
                        padding: EdgeInsets.only(top: 10,bottom: 12),
                        width: size * (158 / 360),

                        decoration: BoxDecoration(
                            color: Color(0XFFF3F4F6),
                            borderRadius:
                            BorderRadius.all(Radius.circular(10))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'STATEMENT DATE',
                              style: myStyleInter(
                                  size * (14 / 360),
                                  AppColor.statementScreenTextColor,
                                  FontWeight.w700),
                            ),
                            SizedBox(height: 4,),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0,right: 8),
                              child: SizedBox(
                                height: size*(30/360),
                                child:  TextField(

                                  controller: fromDateController,
                                  style: myStyleInter(size*(14/360), Colors.black,FontWeight.normal),
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    contentPadding: EdgeInsets.only(bottom: 15,left: 15),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.all(Radius.circular(5))
                                    ),
                                    label: Text('From date',style: myStyleInter(size*(13/360), AppColor.parcelStatementPageTextColor),),
                                    //isDense: true,                      // Added this
                                  ),
                                  onTap: (){
                                    _selectedFromDate(context);
                                  },
                                ),
                              ),
                            ),
                            SizedBox(height: 8,),
                            Padding(
                              padding: const EdgeInsets.only(left:6,right: 6),
                              child: SizedBox(
                                height: size*(30/360),
                                child:  TextField(

                                  controller: toDateController,
                                  style: myStyleInter(size*(14/360), Colors.black,FontWeight.normal),
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    contentPadding: EdgeInsets.only(bottom: 15,left: 15),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.all(Radius.circular(5))
                                    ),
                                    label: Text('To date',style: myStyleInter(size*(13/360), AppColor.parcelStatementPageTextColor),),
                                    //isDense: true,                      // Added this
                                  ),
                                  onTap: (){
                                    _selectedToDate(context);
                                  },
                                ),
                              ),
                            ),
                            SizedBox(height: 12,),
                            SizedBox(
                              width: size*(143/360),
                              child: ElevatedButton(
                                style: appButtonStyle(),
                                  onPressed: (){}, child: Text('Search')),
                            ),












                            // Container(
                            //   alignment: Alignment.center,
                            //   decoration: BoxDecoration(
                            //     color: Colors.white,
                            //     borderRadius: const BorderRadius.all(
                            //         Radius.circular(5)),
                            //     border: Border.all(color: Colors.grey),
                            //   ),
                            //   width: size * (158 / 360),
                            //   child: TextFormField(
                            //     controller: fromDateController,
                            //     //editing controller of this TextField
                            //
                            //     readOnly: true,
                            //       onTap: () {
                            //         _selectedFromDate(context);
                            //       }),
                            //   ),



                          ],
                        ),
                      ),
                    ],
                  ),














                  SizedBox(
                    height: size*(15/360),
                  ),

                  //...........2nd row.............

                  Text(
                    'STATEMENT DATE',
                    style: myStyleInter(size*(16/360), Color(0xFF0B4461), FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    '20-11-2000 TO 30-11-2022',
                    style: myStyleInter(size*(16/360), Color(0xFF0B4461), FontWeight.w700),
                  ),
                   SizedBox(
                    height: size*(16/360),
                  ),
                  Row(
                    children:  [
                      Expanded(
                        flex: 1,
                        child: StatementScreenContainer(
                          text: 'Today Collection',
                          color: Color(0XFFBDD7EE),
                          num: '5000',
                        ),
                      ),
                      SizedBox(
                        width: size*(12/360),
                      ),
                      Expanded(
                        flex: 1,
                        child: StatementScreenContainer(
                          text: 'Total Collection',
                          color: Color(0XFFBDD7EE),
                          num: '3',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size*(16/360),
                  ),
                  Row(
                    children:  [
                      Expanded(
                        flex: 1,
                        child: StatementScreenContainer(
                          text: 'Today Parcel Complete',
                          color: Color(0XFFC6E0B4),
                          num: '30',
                        ),
                      ),
                      SizedBox(
                        width:size*(12/360),
                      ),
                      Expanded(
                        flex: 1,
                        child: StatementScreenContainer(
                          text: 'Total Parcel Complete',
                          color: Color(0XFFC6E0B4),
                          num: '30',
                        ),
                      ),
                    ],
                  ),
                   SizedBox(
                    height: size*(16/360),
                  ),
                  Row(
                    children:  [
                      Expanded(
                        flex: 1,
                        child: StatementScreenContainer(
                          text: 'Today Parcel Return',
                          color: Color(0XFFFFE699),
                          num: '1',
                        ),
                      ),
                      SizedBox(
                        width: size*(12/360),
                      ),
                      Expanded(
                        flex: 1,
                        child: StatementScreenContainer(
                          text: 'Total Parcel Return 6',
                          color: Color(0XFFFFE699),
                          num: '30',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size*(16/360),
                  ),
                  Row(
                    children:  [
                      Expanded(
                        flex: 1,
                        child: StatementScreenContainer(
                          text: 'Today Delivery Charges',
                          color: Color(0XFFC6E0B4),
                          num: '140',
                        ),
                      ),
                      SizedBox(
                        width: size*(12/360),
                      ),
                      Expanded(
                        flex: 1,
                        child: StatementScreenContainer(
                          text: 'Today Delivery Charges',
                          color: Color(0XFFC6E0B4),
                          num: '1810',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            StatementListTable(),
          ]),
        ));
  }
}

/*List<CustomerList> getCustomerListData() {
  return [
    CustomerList("#100470", "MD. Ahosan Habib", "example@gmail.com", "01626658415", "16/1 (9th Floor), Alhaz Shamsuddin Mansion,\nNew Eskaton Garden Road", ""),
    CustomerList("#100470", "MD. Ahosan Habib", "example@gmail.com", "01626658415", "16/1 (9th Floor), Alhaz Shamsuddin Mansion,\nNew Eskaton Garden Road", ""),
    CustomerList("#100470", "MD. Ahosan Habib", "example@gmail.com", "01626658415", "16/1 (9th Floor), Alhaz Shamsuddin Mansion,\nNew Eskaton Garden Road", ""),
    CustomerList("#100470", "MD. Ahosan Habib", "example@gmail.com", "01626658415", "16/1 (9th Floor), Alhaz Shamsuddin Mansion,\nNew Eskaton Garden Road", ""),
    CustomerList("#100470", "MD. Ahosan Habib", "example@gmail.com", "01626658415", "16/1 (9th Floor), Alhaz Shamsuddin Mansion,\nNew Eskaton Garden Road", ""),
    CustomerList("#100470", "MD. Ahosan Habib", "example@gmail.com", "01626658415", "16/1 (9th Floor), Alhaz Shamsuddin Mansion,\nNew Eskaton Garden Road", ""),
  ];
}

class CustomerList {
  CustomerList(this.customerID, this.customerName, this.customerEmail,
      this.mobileNumber, this.customerAddress, this.action);

  final String customerID;
  final String customerName;
  final String customerEmail;
  final String mobileNumber;
  final String customerAddress;
  final String action;
}


class CustomerListTableDataSource extends DataGridSource {
  CustomerListTableDataSource({required List<CustomerList> customerListData}) {
    _customerListData = customerListData
        .map<DataGridRow>((e) => DataGridRow(cells: [
      DataGridCell<String>(columnName: 'customerID', value: e.customerID),
      DataGridCell<String>(columnName: 'customerName', value: e.customerName),
      DataGridCell<String>(columnName: 'customerEmail', value: e.customerEmail),
      DataGridCell<String>(columnName: 'mobileNumber', value: e.mobileNumber),
      DataGridCell<String>(columnName: 'customerAddress', value: e.customerAddress),
      DataGridCell<String>(columnName: 'action', value: e.action),
    ]))
        .toList();
  }

  List<DataGridRow> _customerListData = [];
  @override
  List<DataGridRow> get rows => _customerListData;
  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((e) {
          return Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(8.0),
            child: Text(e.value.toString()),
          );
        }).toList());
  }



}*/
