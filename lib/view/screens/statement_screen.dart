import 'package:flutter/material.dart';
import 'package:parcel_star/reusable_widgets/reusable_statementscreen_container.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../../const/app_color.dart';
import '../../const/text_style.dart';
import '../componets/statement_table.dart';

class StatementScreen extends StatefulWidget {
  const StatementScreen({Key? key}) : super(key: key);

  @override
  State<StatementScreen> createState() => _StatementScreenState();
}

class _StatementScreenState extends State<StatementScreen> {


  @override
  Widget build(BuildContext context) {
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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 16.0, right: 16, top: 20, bottom: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0, top: 10),
                            child: Container(
                              decoration: const BoxDecoration(
                                  color: Color(0XFFF3F4F6),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              height: 200,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text(
                                      'MERCHANT INFORMATION',
                                      style: myStyleInter(
                                          14,
                                          AppColor.statementScreenTextColor,
                                          FontWeight.w700),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      height: 150,
                                      decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(0.7),
                                          border: Border.all(width: 0.07)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 13),
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
                                                      backgroundColor:
                                                          Colors.red,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 8.0),
                                                      child: Text(
                                                        'Merchant Name',
                                                        style: myStyleInter(
                                                            14,
                                                            AppColor
                                                                .statementScreenTextColor,
                                                            FontWeight.w400),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    left: 30.0,
                                                  ),
                                                  child: Text(
                                                    'MD. HASIB',
                                                    style: myStyleInter(
                                                        14,
                                                        AppColor
                                                            .statementScreenTextColor,
                                                        FontWeight.w700),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 16,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              // mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Row(
                                                  children: [
                                                    const CircleAvatar(
                                                      radius: 5,
                                                      backgroundColor:
                                                          Colors.red,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 8.0),
                                                      child: Text(
                                                        'Merchant Name',
                                                        style: myStyleInter(
                                                            14,
                                                            AppColor
                                                                .statementScreenTextColor,
                                                            FontWeight.w400),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    left: 30.0,
                                                  ),
                                                  child: Text(
                                                    'MD. HASIB',
                                                    style: myStyleInter(
                                                        14,
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
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 200,
                            child: Placeholder(),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'STATEMENT DATE',
                      style:
                          myStyleInter(16, Color(0xFF0B4461), FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      '20-11-2000 TO 30-11-2022',
                      style:
                          myStyleInter(16, Color(0xFF0B4461), FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: const [
                        Expanded(
                          flex: 1,
                          child: StatementScreenContainer(
                            text: 'Today Collection',
                            color: Color(0XFFBDD7EE),
                            num: '5000',
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Expanded(
                          flex: 1,
                          child: StatementScreenContainer(
                            text: 'Today Parcel Complete',
                            color: Color(0XFFBDD7EE),
                            num: '30',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: const [
                        Expanded(
                          flex: 1,
                          child: StatementScreenContainer(
                            text: 'Today Parcel Complete',
                            color: Color(0XFFC6E0B4),
                            num: '30',
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Expanded(
                          flex: 1,
                          child: StatementScreenContainer(
                            text: 'Today Parcel Complete',
                            color: Color(0XFFC6E0B4),
                            num: '30',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: const [
                        Expanded(
                          flex: 1,
                          child: StatementScreenContainer(
                            text: 'Today Parcel Complete',
                            color: Color(0XFFFFE699),
                            num: '30',
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Expanded(
                          flex: 1,
                          child: StatementScreenContainer(
                            text: 'Today Parcel Complete',
                            color: Color(0XFFFFE699),
                            num: '30',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: const [
                        Expanded(
                          flex: 1,
                          child: StatementScreenContainer(
                            text: 'Today Parcel Complete',
                            color: Color(0XFFC6E0B4),
                            num: '30',
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Expanded(
                          flex: 1,
                          child: StatementScreenContainer(
                            text: 'Today Parcel Complete',
                            color: Color(0XFFC6E0B4),
                            num: '30',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              StatementListTable(),

            ]
          ),
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
