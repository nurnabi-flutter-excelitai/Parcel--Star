
import 'package:flutter/material.dart';


import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'dart:math' as math;



class StatementPage extends StatefulWidget {
  static const String routeName = "/statementPage";


  @override
  State<StatementPage> createState() => _StatementPageState();
}

class _StatementPageState extends State<StatementPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Padding(
            padding:  EdgeInsets.only(

            ),
            child: Icon(
              Icons.arrow_back_ios,

              color: Colors.white,
            ),
          ),
        ),
        centerTitle: false,
        backgroundColor: const Color(0xff0B4461),
        title: Text(
          "Delivery Boy Statement",
        ),
      ),

      body: NestedScrollView(
        physics: const NeverScrollableScrollPhysics(),
        headerSliverBuilder: (context, isScrolled) {
          return [
            SliverAppBar(
              backgroundColor: Colors.white,
              collapsedHeight: AppDimension.padding(
                  figPadding: 800, context: context), // 500
              expandedHeight: AppDimension.padding(
                  figPadding: 800, context: context), // 500
              flexibleSpace: Column(
                children: const [
                  StatementDatePage(),
                ],
              ),
            )
          ];
        },
        body: TablePage(),
      ),
    );
  }
}

// first row ---------

class StatementDatePage extends StatefulWidget {



  @override
  State<StatementDatePage> createState() => _StatementDatePageState();
}

class _StatementDatePageState extends State<StatementDatePage> {
  DateTime pickFromDate;
  DateTime pickToDate;
  TextEditingController fromDateCtrl = TextEditingController();
  TextEditingController toDateCtrl = TextEditingController();


  @override
  dispose() {
    fromDateCtrl.dispose();
    toDateCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: AppDimension.padding(figPadding: 12, context: context),
        ),
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
          ),
          padding: EdgeInsets.all(
              AppDimension.padding(figPadding: 12, context: context)),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SEC 1 - the two cubes
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // 1st column
                  Padding(
                    padding: EdgeInsets.only(
                      top: AppDimension.padding(
                          figPadding: 0, context: context),
                      left: AppDimension.padding(
                          figPadding: 12, context: context),
                      right: AppDimension.padding(
                          figPadding: 2, context: context),
                    ),
                    child: AppCustomWhiteBackground(
                      width: AppDimension.width(
                          figmaWidth: 300, context: context),
                      height: AppDimension.height(
                          figmaHeight: 280, context: context),
                      borderWidth: 0,
                      borderColor: Colors.white,
                      boxShadow: [],
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FittedBox(
                                  child: Text(
                                    "DELIVERY BOY\nINFORMATION",
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                    style: TextStyle(
                                        fontSize: AppDimension.fontSize(
                                            figmaFontSize: 14,
                                            context: context),
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff0B4461)),
                                  ),
                                ),
                                SizedBox(height: AppDimension.height(figmaHeight: 10, context: context),),
                                AppCustomWhiteBackground(
                                  // borderWidth: 0,
                                  // width: AppDimension.width(
                                  //     figmaWidth: 120, context: context),
                                  height: AppDimension.height(
                                      figmaHeight: 80, context: context),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.1),
                                      spreadRadius: 1,
                                      blurRadius: 1,
                                      offset: Offset(0,
                                          3), // changes position of shadow
                                    ),
                                  ],
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.square,
                                            color: Color(0xff0B4461),
                                            size: 10.0,
                                          ),
                                          const SizedBox(width: 5,),
                                          Column(
                                            children: [
                                              Text(
                                                "Del. Boy name\n  Md. Hasib",

                                                style: TextStyle(
                                                    fontSize: AppDimension.fontSize(
                                                        figmaFontSize: 12,
                                                        context: context),
                                                    color: Color(0xff0B4461)),
                                              ),

                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: AppDimension.height(figmaHeight: 10, context: context),),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.square,
                                            color: Color(0xff0B4461),
                                            size: 10.0,
                                          ),
                                          const SizedBox(width: 5,),
                                          Column(
                                            children: [
                                              Text(
                                                "Del. Boy name\n  Md. Hasib",

                                                style: TextStyle(
                                                    fontSize: AppDimension.fontSize(
                                                        figmaFontSize: 12,
                                                        context: context),
                                                    color: Color(0xff0B4461)),
                                              ),

                                            ],
                                          ),
                                        ],
                                      ),

                                    ],
                                  ),
                                ),
                                SizedBox(height: 50,),
                                Text(
                                  "STATEMENT DATE",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: AppDimension.fontSize(
                                          figmaFontSize: 14,
                                          context: context),
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff0B4461)),
                                ),
                                SizedBox(height: 10,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "20-11-2000",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: AppDimension.fontSize(
                                              figmaFontSize: 14,
                                              context: context),
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff0B4461)),
                                    ),
                                    Text(
                                      "To",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: AppDimension.fontSize(
                                              figmaFontSize: 14,
                                              context: context),
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff0B4461)),
                                    ),
                                    Text(
                                      "30-11-2022",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: AppDimension.fontSize(
                                              figmaFontSize: 14,
                                              context: context),
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff0B4461)),
                                    ),

                                  ],
                                ),

                              ],
                            ),
                          ),

                          SizedBox(width: AppDimension.width(figmaWidth: 30, context: context),),
                          Expanded(
                            flex: 1,
                            child: Column(
                              children: [
                                Text("STATEMENT DATE",style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: AppDimension.fontSize(figmaFontSize: 12, context: context)
                                ),),
                                SizedBox(height: AppDimension.height(figmaHeight: 15, context: context),),
                                Container(
                                  height: AppDimension.height(figmaHeight: 80, context: context),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        height: AppDimension.height(
                                            figmaHeight: 30, context: context),
                                        width: AppDimension.width(
                                            figmaWidth: 150, context: context),
                                        decoration: BoxDecoration(
                                          color: AppColorResources.whiteColor,
                                          borderRadius: BorderRadius.all(Radius.circular(
                                              AppDimension.getResponsivePixelSize(
                                                  figmaPixelSize: 5, context: context))),
                                          border: Border.all(
                                              color: AppColorResources.borderColor),
                                        ),
                                        child: Center(
                                          child: TextFormField(
                                            controller: fromDateCtrl,
                                            //editing controller of this TextField
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: "From Date",
                                              hintStyle: TextStyle(
                                                color: AppColorResources.greyColor,
                                                fontSize: AppDimension.fontSize(
                                                    figmaFontSize: 14, context: context),
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            readOnly:
                                            true, //set it true, so that user will not able to edit text
                                            onTap: () async {
                                              pickFromDate = await showDatePicker(
                                                  context: context,
                                                  initialDate: DateTime.now(),
                                                  firstDate: DateTime(
                                                      2000), //DateTime.now() - not to allow to choose before today.
                                                  lastDate: DateTime(2101));
                                            },
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                        //  width: 10,
                                      ),
                                      Container(
                                        height: AppDimension.height(
                                            figmaHeight: 30, context: context),
                                        width: AppDimension.width(
                                            figmaWidth: 150, context: context),
                                        decoration: BoxDecoration(
                                          color: AppColorResources.whiteColor,
                                          borderRadius: BorderRadius.all(Radius.circular(
                                              AppDimension.getResponsivePixelSize(
                                                  figmaPixelSize: 5, context: context))),
                                          border: Border.all(
                                              color: AppColorResources.borderColor),
                                        ),
                                        child: TextFormField(
                                          controller:
                                          toDateCtrl, //editing controller of this TextField
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "To Date",
                                            hintStyle: TextStyle(
                                              color: AppColorResources.greyColor,
                                            ),
                                          ),
                                          readOnly:
                                          true, //set it true, so that user will not able to edit text
                                          onTap: () async {
                                            pickToDate = await showDatePicker(
                                                context: context,
                                                initialDate: DateTime.now(),
                                                firstDate: pickFromDate,
                                                // firstDate: pickFromDate.add(Duration(days: 1)),

                                                lastDate: DateTime(2101));
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                SizedBox(
                                  height: AppDimension.getResponsivePixelSize(
                                      figmaPixelSize: 15, context: context),
                                ),

                                AppCustomButtons(
                                  height: AppDimension.height(
                                      figmaHeight: 42, context: context),
                                  width:
                                  AppDimension.width(figmaWidth: 298, context: context),
                                  onPress: () {},
                                  decoration: BoxDecoration(
                                    color: AppColorResources.buttonColor,
                                    borderRadius: BorderRadius.all(Radius.circular(
                                        AppDimension.getResponsivePixelSize(
                                            figmaPixelSize: 5, context: context))),
                                  ),
                                  title: "Search",
                                  style: TextStyle(
                                    color: AppColorResources.whiteColor,
                                    fontSize: AppDimension.fontSize(
                                        figmaFontSize: 14, context: context),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),


                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),

              SizedBox(
                height: AppDimension.padding(figPadding: 0, context: context),
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: AppDimension.gridViewRatio(90, 158),
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 0,
                ),
                itemCount: dailyList.length,
                itemBuilder: (context, index) => CustomGridItemStateWidget(
                  image: dailyList[index].image,
                  title: dailyList[index].title,
                  amount: dailyList[index].amount,
                  color: dailyList[index].color,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

// Table Components --------

class TablePage extends StatefulWidget {
  @override
  State<TablePage> createState() => _TablePageState();
}

class _TablePageState extends State<TablePage> {
  // const TablePage({Key key}) : super(key: key);
  List<Transaction> transactions;
  TransactionDataSource transactionDataSource;

  @override
  void initState() {
    transactions = getTransactionData();
    transactionDataSource = TransactionDataSource(transactions);
    super.initState();
  }

  int conter = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SfDataGridTheme(
      data: SfDataGridThemeData(
        gridLineColor: Colors.white60, gridLineStrokeWidth: 1.0,
      ),
      child: SfDataGrid(
        source: transactionDataSource,
        frozenColumnsCount: 1,
        footerFrozenColumnsCount: 2,
        columns: [
          GridColumn(
              columnName: 'date',
              label: Container(
                color: Color(0xFF0B4461),
                padding: EdgeInsets.symmetric(horizontal: 6.0),
                alignment: Alignment.centerRight,
                child: const Text(
                  'Date & Time',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              )),

          // ignore: deprecated_member_use
          GridColumn(
              columnName: 'Invoice No',
              label: Container(
                color: Color(0xFF0B4461),
                padding: EdgeInsets.symmetric(horizontal: 6.0),
                alignment: Alignment.centerRight,
                child: const Text(
                  'Invoice No',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              )),
          GridColumn(
              columnName: 'customerName',
              label: Container(
                color: Color(0xFF0B4461),
                padding: EdgeInsets.symmetric(horizontal: 6.0),
                alignment: Alignment.centerRight,
                child: const Text(
                  'Cus. Name',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              )),
          GridColumn(
              columnName: 'serviceType',
              label: Container(
                color: Color(0xFF0B4461),
                padding: EdgeInsets.symmetric(horizontal: 6.0),
                alignment: Alignment.centerRight,
                child: const Text(
                  'Del service type',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              )),
          GridColumn(
              columnName: 'paymentType',
              label: Container(
                color: Color(0xFF0B4461),
                padding: EdgeInsets.symmetric(horizontal: 6.0),
                alignment: Alignment.centerRight,
                child: const Text(
                  'Payment Type',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              )),
          GridColumn(
              columnName: 'cashRec',
              label: Container(
                color: Color(0xFF0B4461),
                padding: EdgeInsets.symmetric(horizontal: 6.0),
                alignment: Alignment.centerRight,
                child: const Text(
                  'Cash Rec & collect AMT',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              )),
          GridColumn(
              columnName: 'withdrawCharges',
              label: Container(
                color: Color(0xFF0B4461),
                padding: EdgeInsets.symmetric(horizontal: 6.0),
                alignment: Alignment.centerRight,
                child: const Text(
                  'W/D for charges',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              )),
          GridColumn(
              columnName: 'balance',
              width: 60,
              label: Container(
                color: Color(0xFF0B4461),
                padding: EdgeInsets.symmetric(horizontal: 6.0),
                alignment: Alignment.centerRight,
                child: const Text(
                  'Balance',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              )),
          GridColumn(
              columnName: 'withdraw',
              width: 60,
              label: Container(
                color: Color(0xFF0B4461),
                padding: EdgeInsets.symmetric(horizontal: 6.0),
                alignment: Alignment.centerRight,
                child: const Text(
                  'W/D By MER',
                  maxLines: 2,
                  // overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              )),
        ],
      ),
    );
  }
}

// table input
List<Transaction> getTransactionData() {
  List<Transaction> addedBalanceFinalTable = [
    Transaction('12.12.12', "45114244", 'Md.Sohal', 'Express Delivery',
        'Cash/Bkash', 700, 800, 5920, 4180),
    Transaction('12.12.12', "45114244", 'Md.Sohal', 'Express Delivery',
        'Cash/Bkash', 700, 800, 5920, 4180),
    Transaction('12.12.12', "45114244", 'Md.Sohal', 'Express Delivery',
        'Cash/Bkash', 700, 800, 5920, 4180),
    Transaction('12.12.12', "45114244", 'Md.Sohal', 'Express Delivery',
        'Cash/Bkash', 700, 800, 5920, 4180),
    Transaction('12.12.12', "45114244", 'Md.Sohal', 'Express Delivery',
        'Cash/Bkash', 700, 800, 5920, 4180),
    Transaction('12.12.12', "45114244", 'Md.Sohal', 'Express Delivery',
        'Cash/Bkash', 700, 800, 5920, 4180),
    Transaction('12.12.12', "45114244", 'Md.Sohal', 'Express Delivery',
        'Cash/Bkash', 700, 800, 5920, 4180),
    Transaction('12.12.12', "45114244", 'Md.Sohal', 'Express Delivery',
        'Cash/Bkash', 700, 800, 5920, 4180),
    Transaction('12.12.12', "45114244", 'Md.Sohal', 'Express Delivery',
        'Cash/Bkash', 700, 800, 5920, 4180),
    Transaction('12.12.12', "45114244", 'Md.Sohal', 'Express Delivery',
        'Cash/Bkash', 700, 800, 5920, 4180),
    Transaction('12.12.12', "45114244", 'Md.Sohal', 'Express Delivery',
        'Cash/Bkash', 700, 800, 5920, 4180),
    Transaction('12.12.12', "45114244", 'Md.Sohal', 'Express Delivery',
        'Cash/Bkash', 700, 800, 5920, 4180),
    Transaction('12.12.12', "45114244", 'Md.Sohal', 'Express Delivery',
        'Cash/Bkash', 700, 800, 5920, 4180),
    Transaction('12.12.12', "45114244", 'Md.Sohal', 'Express Delivery',
        'Cash/Bkash', 700, 800, 5920, 4180),
    Transaction('12.12.12', "45114244", 'Md.Sohal', 'Express Delivery',
        'Cash/Bkash', 700, 800, 5920, 4180),
    Transaction('12.12.12', "45114244", 'Md.Sohal', 'Express Delivery',
        'Cash/Bkash', 700, 800, 5920, 4180),
  ];

  // Addition logic

  int cashRecord = 0;
  int withdrowForCharge = 0;
  int balance = 0;
  int withdraw = 0;

  addedBalanceFinalTable.forEach((element) {
    cashRecord = cashRecord + element.cashRec;
    withdrowForCharge = withdrowForCharge + element.withdrawCharges;
    balance = balance + element.balance;
    withdraw = withdraw + element.withdraw;
  });

  addedBalanceFinalTable.add(Transaction("Total", '', '', '', '', cashRecord,
      withdrowForCharge, balance, withdraw));
  //

  return addedBalanceFinalTable;
}

class TransactionDataSource extends DataGridSource {
  int count = -1;
  TransactionDataSource(List<Transaction> transactions) {
    dataGridRows = transactions
        .map<DataGridRow>(
          (dataGridRow) => DataGridRow(
        cells: [
          DataGridCell<String>(columnName: 'date', value: dataGridRow.date),
          DataGridCell<String>(
              columnName: 'invoiceNo', value: dataGridRow.invoiceNo),
          DataGridCell<String>(
              columnName: 'customerName', value: dataGridRow.customerName),
          DataGridCell<String>(
              columnName: 'serviceType', value: dataGridRow.serviceType),
          DataGridCell<String>(
              columnName: 'paymentType', value: dataGridRow.paymentType),
          DataGridCell<int>(
              columnName: 'cashRec', value: dataGridRow.cashRec),
          DataGridCell<int>(
              columnName: 'withdrawCharges',
              value: dataGridRow.withdrawCharges),
          DataGridCell<int>(
              columnName: 'balance', value: dataGridRow.balance),
          DataGridCell<int>(
              columnName: 'withdraw', value: dataGridRow.withdraw),
        ],
      ),
    )
        .toList();
  }

  List<DataGridRow> dataGridRows;
  @override
  List<DataGridRow> get rows => dataGridRows;
  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    print(dataGridRows.length);
    bool turnRed = false;
    count++;

    return DataGridRowAdapter(
        color: Colors.white60, //Color(0xffD9E1F2),

        cells: row.getCells().map<Widget>((dataGridCell) {
          Color getRowColor() {
            // turn red logic
            if (dataGridCell.value == 'Total') {
              turnRed = true;
            }

            if (turnRed) {
              return Color(0xffE1403F);
            }
            //

            if ((dataGridCell.columnName == 'balance' && count % 2 == 0) ||
                (dataGridCell.columnName == 'invoiceNo' && count % 2 == 0) ||
                (dataGridCell.columnName == 'serviceType' && count % 2 == 0) ||
                (dataGridCell.columnName == 'cashRec' && count % 2 == 0) ||
                (dataGridCell.columnName == 'invoiceNo' && count % 2 == 0) ||
                (dataGridCell.columnName == 'invoiceNo' && count % 2 == 0) ||
                (dataGridCell.columnName == 'invoiceNo' && count % 2 == 0)) {
              return Color(0xffE3E3E3); //ash
            }

            if ((dataGridCell.columnName == 'balance') ||
                (dataGridCell.columnName == 'invoiceNo') ||
                (dataGridCell.columnName == 'serviceType') ||
                (dataGridCell.columnName == 'cashRec') ||
                (dataGridCell.columnName == 'invoiceNo') ||
                (dataGridCell.columnName == 'invoiceNo') ||
                (dataGridCell.columnName == 'invoiceNo')) {
              return Color(0xffE3E3E3); //ash
            }

            if (count % 2 == 0) {
              return Colors.white60;
            } else {
              return Color(0xffD9E1F2); //blue
            }
          }

          return Container(
            // dataGridRows.length == totalCount ? Colors.red
              color: getRowColor(),
              padding: EdgeInsets.symmetric(horizontal: 6.0),

              // alignment: (dataGridCell.columnName == 'id' ||
              //     dataGridCell.columnName == 'salary')
              //     ? Alignment.centerRight
              //     : Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  dataGridCell.value.toString(),
                  // overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  // style: getTextStyle(),
                  style: TextStyle(
                      color: turnRed ? Colors.white : Color(0xFF0B4461),
                      fontSize: turnRed ? 13 : 12,
                      fontWeight: FontWeight.w700),
                ),
              ));
        }).toList());
  }
}

class Transaction {
  // final String date;
  final String date;
  final String invoiceNo;
  final String customerName;
  final String serviceType;
  final String paymentType;
  final int cashRec;
  final int withdrawCharges;
  final int balance;
  final int withdraw;

  Transaction(
      this.date,
      this.invoiceNo,
      this.customerName,
      this.serviceType,
      this.paymentType,
      this.cashRec,
      this.withdrawCharges,
      this.balance,
      this.withdraw);

//

}

final List<DailyActivityModel> dailyList = [
  DailyActivityModel(
      color: Color(0xffBDD7EE), amount: "5000", title: "Today Collection"),
  DailyActivityModel(
      color: Color(0xffBDD7EE), amount: "5000", title: "Total Collection"),

  DailyActivityModel(
      color: Color(0xffC6E0B4), amount: "2", title: "Today Parcel Complete"),
  DailyActivityModel(
      color: Color(0xffC6E0B4), amount: "16", title: "Total Parcel Complete"),

  DailyActivityModel(
      color: Color(0xffFFE699), amount: "0", title: "Today Parcel Return"),
  DailyActivityModel(
      color: Color(0xffFFE699), amount: "6", title: "Total Parcel Return"),

  DailyActivityModel(
      color: Color(0xffC6E0B4), amount: "140", title: "Total Cash Deposit At Hub"),
  DailyActivityModel(
      color: Color(0xffC6E0B4),
      amount: "1810",
      title: "Total Cash Deposite At Hub"),
];

class DailyActivityModel {
  String title;
  String image;
  String amount;
  Color color;

  DailyActivityModel({this.image, this.amount, this.title, this.color});
}

class CustomGridItemStateWidget extends StatelessWidget {
  double width;
  double height;
  String title;
  String image;
  String amount;
  Color color;
  CustomGridItemStateWidget(
      {@required this.image,
        @required this.width,
        @required this.height,
        @required this.title,
        @required this.amount,
        @required this.color,
        Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      height: AppDimension.height(
          figmaHeight: 200, context: context?? height),
      width: AppDimension.width(
          figmaWidth: 106, context: context?? width), // 158
      color: color != null ? color : Colors.white,
      boxShadow: containerShadow,
      paddingHorizontal: AppDimension.padding(figPadding: 2, context: context),
      paddingVertical:
      AppDimension.sizeWithHight(figmaSize: 7, context: context),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize:
                AppDimension.fontSize(figmaFontSize: 13, context: context),
                fontWeight: FontWeight.w500),
            maxLines: 3,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: AppDimension.padding(figPadding: 3, context: context),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              // Image.asset(
              //   image,
              //   height: AppDimension.getResponsivePixelSize(figmaPixelSize: 24,context: context),
              //   width: AppDimension.getResponsivePixelSize(figmaPixelSize: 24,context: context),
              //   fit: BoxFit.fill,
              // ),
              Text(
                amount,
                style: TextStyle(
                    fontSize: AppDimension.fontSize(
                        figmaFontSize: 14, context: context),
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
          SizedBox(
            height: AppDimension.padding(figPadding: 10, context: context),
          ),
        ],
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  double height;
  double width;
  double borderRadius;
  Color color;
  List<BoxShadow> boxShadow;
  double elevation;
  double paddingHorizontal;
  double paddingVertical;
  Widget child;

  CustomContainer(
      {@required this.height,
        @required this.width,
        @required this.boxShadow,
        @required this.child,
        //if this container is inside a  container then use this proparty and give that container width;
        this.color = Colors.white,
        this.borderRadius = 10,
        this.elevation = 0,
        this.paddingHorizontal = 0,
        this.paddingVertical = 0,
        Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Container(
        // width: AppDimension.backgroundConWidth(width, size.width),
        width: width,
        height: height,
        padding: EdgeInsets.symmetric(
            vertical: AppDimension.padding(
                figPadding: paddingVertical, context: context),
            horizontal: AppDimension.padding(
                figPadding: paddingVertical, context: context)),
        decoration: BoxDecoration(
          boxShadow: boxShadow,
          borderRadius: BorderRadius.circular(borderRadius),
          color: color,
        ),
        child: child,
      ),
    );
  }
}

final List<BoxShadow> containerShadow = [
  BoxShadow(
    color: AppColorResources.iconColor.withOpacity(0.14),
    offset: const Offset(
      2.0,
      3.0,
    ),
    blurRadius: 10.0,
    spreadRadius: 0.0,
  ), //BoxShadow
  BoxShadow(
    color: AppColorResources.iconColor.withOpacity(0.1),
    offset: const Offset(-1.0, -1.0),
    blurRadius: 2.0,
    spreadRadius: 0.0,
  ),
];


