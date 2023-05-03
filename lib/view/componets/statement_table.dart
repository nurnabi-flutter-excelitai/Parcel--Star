



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
    final size = MediaQuery.of(context).size.width;
    return SfDataGrid(
      shrinkWrapRows: true,
      isScrollbarAlwaysShown: true,
      frozenColumnsCount: 1,
      footerFrozenColumnsCount: 2,
      // defaultColumnWidth: 100,
      source: stateMentListTableDataSource,
      //columnWidthMode: ColumnWidthMode.fill,
      columns: <GridColumn>[
        GridColumn(
           width: size*(71/360),
            columnName: 'DATE & TIME',
            label: Container(
               decoration: BoxDecoration(
                   color: Color(0xFF0B4461),
                 borderRadius: BorderRadius.only(bottomLeft: Radius.circular(6.0),topLeft: Radius.circular(6.0))
               ),

                padding: EdgeInsets.all(12),
                alignment: Alignment.centerLeft,
                child: Text(
                  'DATE & TIME',
                  style: myStyleInter(12, Colors.white, FontWeight.w600),
                )
            )
        ),
        GridColumn(
             width: size*(68/360),
            //columnWidthMode: ColumnWidthMode.auto,
            columnName: 'invoiceNumber',
            label: Container(
                color: Color(0xFF0B4461),
                padding: EdgeInsets.all(12),
                alignment: Alignment.centerLeft,
                child: Text('INVOICE NO',
                  style: myStyleInter(12, Colors.white, FontWeight.w600),))),
        GridColumn(
            width: size*(68/360),
            //columnWidthMode: ColumnWidthMode.auto,
            columnName: 'customerName',
            label: Container(
                color: Color(0xFF0B4461),
                padding: EdgeInsets.all(12),
                alignment: Alignment.centerLeft,
                child: Text(
                  'CUS. NAME',
                  style: myStyleInter(12, Colors.white, FontWeight.w600),
                ))),
        GridColumn(
            columnWidthMode: ColumnWidthMode.auto,
            columnName: 'delServiceType',
            label: Container(
                color: Color(0xFF0B4461),
                padding: EdgeInsets.all(12),
                alignment: Alignment.centerLeft,
                child: Text('DEL SERVICE TYPE',
                  style: myStyleInter(12, Colors.white, FontWeight.w600),))),

        GridColumn(
            columnWidthMode: ColumnWidthMode.auto,
            columnName: 'paymentType',
            label: Container(
                color: Color(0xFF0B4461),
                padding: EdgeInsets.all(12),
                alignment: Alignment.centerLeft,
                child: Text('PAYMENT TYPE',
                  style: myStyleInter(12, Colors.white, FontWeight.w600),))),
        GridColumn(
            columnWidthMode: ColumnWidthMode.auto,
            minimumWidth: 70,
            columnName: 'cashRecordCollectamt',
            label: Container(
                color: Color(0xFF0B4461),
                padding: EdgeInsets.all(12),
                alignment: Alignment.center,
                child: Text('CASH REC & COLLECT AMT',
                  style: myStyleInter(12, Colors.white, FontWeight.w600),))),
        GridColumn(
            columnWidthMode: ColumnWidthMode.auto,
            minimumWidth: 70,
            columnName: 'wdForCharges',
            label: Container(
                color: Color(0xFF0B4461),
                padding: EdgeInsets.all(12),
                alignment: Alignment.center,
                child: Text('W/D FOR CHARGES',
                  style: myStyleInter(12, Colors.white, FontWeight.w600),))),
        GridColumn(
            //columnWidthMode: ColumnWidthMode.auto,
            //minimumWidth: 20,
            width: size*(71/360),
            columnName: 'balance',
            label: Container(
                color: Color(0xFF0B4461),
                padding: EdgeInsets.all(12),
                alignment: Alignment.center,
                child: Text('BALANCE',
                  style: myStyleInter(12, Colors.white, FontWeight.w600),))),
        GridColumn(
            columnWidthMode: ColumnWidthMode.auto,
            //minimumWidth: 20,
            width: size*(64/360),
            columnName: 'wdBymer',
            label: Container(
                decoration: BoxDecoration(
                    color: Color(0xFF0B4461),
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(6.0),topRight: Radius.circular(6.0))
                ),

                padding: EdgeInsets.all(12),
                alignment: Alignment.center,
                child: Text('W/D BY MER.',
                  style: myStyleInter(12, Colors.white, FontWeight.w600),))),



      ],
    );
  }


  List<StatementList> getStatementListData() {
    int total=0;
    List<StatementList> addTotalBalanceTable = [
      StatementList('12.12.22', '45114244', 'Md . Sohal', 'Express Delivery', 'cash/baksh', '700 ৳', '80 ৳', '8920 ৳', 123),
      StatementList('12.12.22', '45114244', 'Md . Sohal', 'Express Delivery', 'cash/baksh', '700 ৳', '80 ৳', '8920 ৳', 123),
      StatementList('12.12.22', '45114244', 'Md . Sohal', 'Express Delivery', 'cash/baksh', '700 ৳', '80 ৳', '8920 ৳', 123),
      StatementList('12.12.22', '45114244', 'Md . Sohal', 'Express Delivery', 'cash/baksh', '700 ৳', '80 ৳', '8920 ৳', 128),
      StatementList('12.12.22', '45114244', 'Md . Sohal', 'Express Delivery', 'cash/baksh', '700 ৳', '80 ৳', '8920 ৳', 123),
      StatementList('12.12.22', '45114244', 'Md . Sohal', 'Express Delivery', 'cash/baksh', '700 ৳', '80 ৳', '8920 ৳', 123),
      StatementList('12.12.22', '45114244', 'Md . Sohal', 'Express Delivery', 'cash/baksh', '700 ৳', '80 ৳', '8920 ৳', 123),
      StatementList('12.12.22', '45114244', 'Md . Sohal', 'Express Delivery', 'cash/baksh', '700 ৳', '80 ৳', '8920 ৳', 123),
      StatementList('12.12.22', '45114244', 'Md . Sohal', 'Express Delivery', 'cash/baksh', '700 ৳', '80 ৳', '8920 ৳', 123),
      StatementList('12.12.22', '45114244', 'Md . Sohal', 'Express Delivery', 'cash/baksh', '700 ৳', '80 ৳', '8920 ৳', 123),
      StatementList('12.12.22', '45114244', 'Md . Sohal', 'Express Delivery', 'cash/baksh', '700 ৳', '80 ৳', '8920 ৳', 123),
      StatementList('12.12.22', '45114244', 'Md . Sohal', 'Express Delivery', 'cash/baksh', '700 ৳', '80 ৳', '8920 ৳', 123),
      StatementList('12.12.22', '45114244', 'Md . Sohal', 'Express Delivery', 'cash/baksh', '700 ৳', '80 ৳', '8920 ৳', 123),
    ];
    addTotalBalanceTable.forEach((element) {
      total=element.wdBymer+total;
    });
    addTotalBalanceTable.add(StatementList('Total', '', '', '', '', '', '', '', total));

    return addTotalBalanceTable;






    /*return [
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
    ];*/

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
  final int wdBymer;

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
    _parcelStatementListData = customerListData.map<DataGridRow>((e) => DataGridRow(cells: [
      DataGridCell<String>(columnName: 'dateTime', value: e.dateTime),
      DataGridCell<String>(columnName: 'invoiceNumber', value: e.invoiceNumber),
      DataGridCell<String>(columnName: 'customerName', value: e.customerName),
      DataGridCell<String>(columnName: 'delServiceType', value: e.delServiceType),
      DataGridCell<String>(columnName: 'paymentType', value: e.paymentType),
      DataGridCell<String>(columnName: 'cashRecordCollectamt', value: e.cashRecordCollectamt),
      DataGridCell<String>(columnName: 'wdForCharges', value: e.wdForCharges),
      DataGridCell<String>(columnName: 'balance', value: e.balance),
      DataGridCell<int>(columnName: 'wdBymer', value: e.wdBymer),
    ])).toList();
  }
  List<DataGridRow> _parcelStatementListData = [];
  @override
  List<DataGridRow> get rows => _parcelStatementListData;
  DataGridRowAdapter buildRow(DataGridRow row) {
    count++;
    bool turnRed = false;
    return DataGridRowAdapter(

        //color: Colors.white60, //Color(0xffD9E1F2),

        cells: row.getCells().map<Widget>((dataGridCell) {
          Color getRowColor() {


            // turn red logic
            if (dataGridCell.value == 'Total') {
              turnRed = true;
            }

            if (turnRed) {
              return Color(0xffE1403F);
            }




            if ((dataGridCell.columnName == 'dateTime' && count % 2 == 0) ||
                (dataGridCell.columnName == 'invoiceNumber' && count % 2 == 0) ||
                (dataGridCell.columnName == 'customerName' && count % 2 == 0) ||
                (dataGridCell.columnName == 'delServiceType' && count % 2 == 0) ||
                (dataGridCell.columnName == 'paymentType' && count % 2 == 0) ||
                (dataGridCell.columnName == 'cashRecordCollectamt' && count % 2 == 0) ||
                (dataGridCell.columnName == 'wdForCharges' && count % 2 == 0) ||
                (dataGridCell.columnName == 'balance' && count % 2 == 0) ||
                (dataGridCell.columnName == 'wdBymer' && count % 2 == 0)
            )
            {
              //return Color(0xffE3E3E3); //ash
              return Colors.white;
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
                (dataGridCell.columnName == 'wdBymer' && count % 2 == 0)
            )  {
              return Color(0xffE3E3E3); //ash
            }


            // if((dataGridCell.columnName == 'invoiceNumber') || (dataGridCell.columnName == 'balance'))
            // {
            //   return Colors.white60;
            // }


            if (count % 2 == 0) {
              return Colors.white60;
            } else if(count%2==1){
              return Color(0xffD9E1F2); //blue
            }
            else{
              return Color(0xffD9E1F2);
            }
          }

          return Container(
              color: getRowColor(),
              padding: EdgeInsets.symmetric(horizontal: 6.0),

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  dataGridCell.value.toString  (),
                  maxLines: 2,
                  style: TextStyle(
                      color: turnRed ? Colors.white : Color(0xFF0B4461),
                      fontSize: turnRed ? 13 : 12,
                      fontWeight: FontWeight.w700),
                ),
              )
          );
        }).toList());

  }



}



