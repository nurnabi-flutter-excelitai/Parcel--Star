

import 'package:flutter/material.dart';
import 'package:parcel_star/const/app_color.dart';

import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../../const/text_style.dart';



class StatementListTable extends StatefulWidget {
  const StatementListTable({Key? key}) : super(key: key);

  @override
  State<StatementListTable> createState() => _StatementListTableState();
}

class _StatementListTableState extends State<StatementListTable> {


  List<StatementList> statemetList = <StatementList>[];
  late StateMentListTableDataSource stateMentListTableDataSource;

  @override
  void initState() {
    super.initState();
    statemetList = getStatementListData();
    stateMentListTableDataSource = StateMentListTableDataSource(customerListData: statemetList);
  }

  @override
  Widget build(BuildContext context) {
    return SfDataGrid(
      shrinkWrapRows: true,
      isScrollbarAlwaysShown: true,
      frozenColumnsCount: 1,
      footerFrozenColumnsCount: 2,
      defaultColumnWidth: 100,
      source: stateMentListTableDataSource,
      //columnWidthMode: ColumnWidthMode.fill,
      columns: <GridColumn>[
        GridColumn(
            columnName: 'DATE & TIME',
            label: Container(
                color: Color(0xFF0B4461),
                padding: EdgeInsets.all(12),
                alignment: Alignment.centerLeft,
                child: Text(
                  'DATE & TIME',
                  style: myStyleInter(12, Colors.black, FontWeight.w600),
                ))),
        GridColumn(
            columnWidthMode: ColumnWidthMode.auto,
            columnName: 'invoiceNumber',
            label: Container(
                color: Color(0xFF0B4461),
                padding: EdgeInsets.all(12),
                alignment: Alignment.centerLeft,
                child: Text('INVOICE NO',
                  style: myStyleInter(12, Colors.black, FontWeight.w600),))),
        GridColumn(
            columnWidthMode: ColumnWidthMode.auto,
            columnName: 'customerName',
            label: Container(
                color: Color(0xFF0B4461),
                padding: EdgeInsets.all(12),
                alignment: Alignment.centerLeft,
                child: Text(
                  'CUS. NAME',
                  style: myStyleInter(12, Colors.black, FontWeight.w600),
                ))),


        GridColumn(
            columnWidthMode: ColumnWidthMode.auto,
            columnName: 'delServiceType',
            label: Container(
                color: Color(0xFF0B4461),
                padding: EdgeInsets.all(12),
                alignment: Alignment.centerLeft,
                child: Text('DEL SERVICE TYPE',
                  style: myStyleInter(12, Colors.black, FontWeight.w600),))),



        GridColumn(
            columnWidthMode: ColumnWidthMode.auto,
            columnName: 'paymentType',
            label: Container(
                color: Color(0xFF0B4461),
                padding: EdgeInsets.all(12),
                alignment: Alignment.centerLeft,
                child: Text('PAYMENT TYPE',
                  style: myStyleInter(12, Colors.black, FontWeight.w600),))),
        GridColumn(
            columnWidthMode: ColumnWidthMode.auto,
            minimumWidth: 96,
            columnName: 'cashRecordCollectamt',
            label: Container(
                color: Color(0xFF0B4461),
                padding: EdgeInsets.all(12),
                alignment: Alignment.center,
                child: Text('CASH REC & COLLECT AMT',
                  style: myStyleInter(12, Colors.black, FontWeight.w600),))),
        GridColumn(
            columnWidthMode: ColumnWidthMode.auto,
            minimumWidth: 96,
            columnName: 'wdForCharges',
            label: Container(
                color: Color(0xFF0B4461),
                padding: EdgeInsets.all(12),
                alignment: Alignment.center,
                child: Text('W/D FOR CHARGES',
                  style: myStyleInter(12, Colors.black, FontWeight.w600),))),
        GridColumn(
            //columnWidthMode: ColumnWidthMode.auto,
            minimumWidth: 96,
            columnName: 'balance',
            label: Container(
                color: Color(0xFF0B4461),
                padding: EdgeInsets.all(12),
                alignment: Alignment.center,
                child: Text('BALANCE',
                  style: myStyleInter(12, Colors.black, FontWeight.w600),))),
        GridColumn(
            columnWidthMode: ColumnWidthMode.auto,
            minimumWidth: 96,
            columnName: 'wdBymer',
            label: Container(
                color: Color(0xFF0B4461),
                padding: EdgeInsets.all(12),
                alignment: Alignment.center,
                child: Text('W/D BY MER.',
                  style: myStyleInter(12, Colors.black, FontWeight.w600),))),



      ],
    );
  }


  List<StatementList> getStatementListData() {
    return [
       StatementList('12.12.22', '45114244', 'Md . Sohal', 'Express Delivery', 'cash/baksh', '700 ৳', '80 ৳', '8920 ৳', ''),
       StatementList('12.12.22', '45114244', 'Md . Sohal', 'Express Delivery', 'cash/baksh', '700 ৳', '80 ৳', '8920 ৳', ''),
       StatementList('12.12.22', '45114244', 'Md . Sohal', 'Express Delivery', 'cash/baksh', '700 ৳', '80 ৳', '8920 ৳', ''),
       StatementList('12.12.22', '45114244', 'Md . Sohal', 'Express Delivery', 'cash/baksh', '700 ৳', '80 ৳', '8920 ৳', '1280 '),
       StatementList('12.12.22', '45114244', 'Md . Sohal', 'Express Delivery', 'cash/baksh', '700 ৳', '80 ৳', '8920 ৳', ''),
       StatementList('12.12.22', '45114244', 'Md . Sohal', 'Express Delivery', 'cash/baksh', '700 ৳', '80 ৳', '8920 ৳', ''),
       StatementList('12.12.22', '45114244', 'Md . Sohal', 'Express Delivery', 'cash/baksh', '700 ৳', '80 ৳', '8920 ৳', ''),
       StatementList('12.12.22', '45114244', 'Md . Sohal', 'Express Delivery', 'cash/baksh', '700 ৳', '80 ৳', '8920 ৳', ''),
       StatementList('12.12.22', '45114244', 'Md . Sohal', 'Express Delivery', 'cash/baksh', '700 ৳', '80 ৳', '8920 ৳', ''),
       StatementList('12.12.22', '45114244', 'Md . Sohal', 'Express Delivery', 'cash/baksh', '700 ৳', '80 ৳', '8920 ৳', ''),
       StatementList('12.12.22', '45114244', 'Md . Sohal', 'Express Delivery', 'cash/baksh', '700 ৳', '80 ৳', '8920 ৳', ''),
       StatementList('12.12.22', '45114244', 'Md . Sohal', 'Express Delivery', 'cash/baksh', '700 ৳', '80 ৳', '8920 ৳', ''),
       StatementList('12.12.22', '45114244', 'Md . Sohal', 'Express Delivery', 'cash/baksh', '700 ৳', '80 ৳', '8920 ৳', ''),

    ];
  }


}

class StatementList{
  final String dateTime;
  final String invoiceNumber;
  final String customerName;
  final String delServiceType;
  final String paymentType;
  final String cashRecordCollectamt;
  final String wdForCharges;
  final String  balance;
  final String wdBymer;

  StatementList(
      this.dateTime,
      this.invoiceNumber,
      this.customerName,
      this.delServiceType,
      this.paymentType,
      this.cashRecordCollectamt,
      this.wdForCharges,
      this.balance,
      this.wdBymer);
}

//new

class StateMentListTableDataSource extends DataGridSource{
  int count = -1;
  StateMentListTableDataSource ({required List<StatementList> customerListData}) {
    _parcelStatementListData = customerListData
        .map<DataGridRow>((e) => DataGridRow(cells: [
      DataGridCell<String>(columnName: 'dateTime', value: e.dateTime),
      DataGridCell<String>(columnName: 'invoiceNumber', value: e.invoiceNumber),
      DataGridCell<String>(columnName: 'customerName', value: e.customerName),
      DataGridCell<String>(columnName: 'delServiceType', value: e.delServiceType),
      DataGridCell<String>(columnName: 'paymentType', value: e.paymentType),
      DataGridCell<String>(columnName: 'cashRecordCollectamt', value: e.cashRecordCollectamt),
      DataGridCell<String>(columnName: 'wdForCharges', value: e.wdForCharges),
      DataGridCell<String>(columnName: 'balance', value: e.balance),
      DataGridCell<String>(columnName: 'wdBymer', value: e.wdBymer),
    ]))
        .toList();
  }
  List<DataGridRow> _parcelStatementListData = [];
  @override
  List<DataGridRow> get rows => _parcelStatementListData;
  DataGridRowAdapter buildRow(DataGridRow row) {
    count++;
    return DataGridRowAdapter(

        color: Colors.white60, //Color(0xffD9E1F2),

        cells: row.getCells().map<Widget>((dataGridCell) {
          Color getRowColor() {


            if ((dataGridCell.columnName == 'dateTime' && count % 2 == 0) ||
                (dataGridCell.columnName == 'invoiceNumber' && count % 2 == 0) ||
                (dataGridCell.columnName == 'customerName' && count % 2 == 0) ||
                (dataGridCell.columnName == 'delServiceType' && count % 2 == 0) ||
                (dataGridCell.columnName == 'paymentType' && count % 2 == 0) ||
                (dataGridCell.columnName == 'cashRecordCollectamt' && count % 2 == 0) ||
                (dataGridCell.columnName == 'wdForCharges' && count % 2 == 0) ||
                (dataGridCell.columnName == 'balance' && count % 2 == 0) ||
                (dataGridCell.columnName == 'balance' && count % 2 == 0)
            )
            {
              return Color(0xffE3E3E3); //ash
            }




            if (
                (dataGridCell.columnName == 'dateTime' && count % 2 == 0) ||
                (dataGridCell.columnName == 'invoiceNumber' && count % 2 == 0) ||
                (dataGridCell.columnName == 'customerName' && count % 2 == 0) ||
                (dataGridCell.columnName == 'delServiceType' && count % 2 == 0) ||
                (dataGridCell.columnName == 'paymentType' && count % 2 == 0) ||
                (dataGridCell.columnName == 'cashRecordCollectamt' && count % 2 == 0) ||
                (dataGridCell.columnName == 'wdForCharges' && count % 2 == 0) ||
                (dataGridCell.columnName == 'balance' && count % 2 == 0) ||
                (dataGridCell.columnName == 'balance' && count % 2 == 0)
            )  {
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

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  dataGridCell.value.toString(),
                  maxLines: 2,
                  // style: getTextStyle(),
                  style: TextStyle(
                      fontWeight: FontWeight.w700),
                ),
              ));
        }).toList());
    /*return DataGridRowAdapter(
      cells: row.getCells().map<Widget>((datagridcell) {


        return Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Text(datagridcell.value.toString(),
            style: myStyleInter(12,Colors.blue, FontWeight.w500),
          ),
        );
      }).toList(),
    );*/
  }



}



