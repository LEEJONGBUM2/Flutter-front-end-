import 'package:flutter/material.dart';
import 'package:iconnexz/components/side_menu.dart';
import 'package:iconnexz/components/sidebar.dart';
import 'package:iconnexz/constants.dart';
import 'package:iconnexz/controllers/MenuController.dart';
import 'package:iconnexz/responsive.dart';
import 'package:provider/provider.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:sizer/sizer.dart';

class Orders extends StatefulWidget {
  @override
  _Orders createState() => _Orders();
}

class _Orders extends State<Orders> {
  int navIndex = 3;
  final dateFrom = TextEditingController();
  final dateTo = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is removed
    dateFrom.dispose();
    dateTo.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double text = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.width;
    return Scaffold(
        drawer: Sidenav(navIndex, (int index) {
          setState(() {
            navIndex = index;
          });
        }),
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(55.0),
            child: AppBar(
              backgroundColor: Color(0xFF2A2D3E),
              actions: [
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(children: [
                      IconButton(
                        icon: Icon(
                          Icons.notifications,
                          color: Colors.white54,
                        ),
                        onPressed: () {},
                      ),
                      SizedBox(width: 20),
                      TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.white54,
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                        onPressed: () {},
                        child: const Text('Shahryar'),
                      ),
                      SizedBox(width: 20),
                      IconButton(
                        icon: Icon(
                          Icons.power_settings_new,
                          color: Colors.white54,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/');
                        },
                      ),
                    ]))
              ],
              leading: Row(
                children: [
                  if (!Responsive.isDesktop(context))
                    IconButton(
                      icon: Icon(
                        Icons.menu,
                        color: Colors.white54,
                      ),
                      onPressed: context.read<MenuController>().controlMenu,
                    ),
                  if (!Responsive.isMobile(context))
                    SizedBox(
                      width: 10,
                    ),
                  Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            )),
        body: SingleChildScrollView(
            child: new Column(children: [
          SizedBox(height: defaultPadding),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        width: text / 1.24,
                        height: 400,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(width: text / 400),
                                    Text('Service',
                                        style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: text / 70,
                                          color: Colors.white,
                                        )),
                                    SizedBox(width: text / 1.61),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: text / 140,
                                          )
                                        ])
                                  ]),
                              Divider(
                                height: 0,
                                thickness: 0,
                                indent: 0,
                                endIndent: 0,
                                color: Colors.white,
                              ),
                              SizedBox(height: text / 90),
                              Container(
                                width: text / 1,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(7)),
                                padding: EdgeInsets.symmetric(vertical: 10),
                                child: DataTable(
                                  columnSpacing: 5,
                                  headingRowHeight: 60,
                                  dataRowHeight: 100,
                                  dividerThickness: 2,
                                  columns: [
                                    DataColumn(
                                        label: Text('OrderId',
                                            style: TextStyle(
                                                fontSize: 7.sp,
                                                fontWeight: FontWeight.bold))),
                                    DataColumn(
                                        label: Text('Order \nStatus',
                                            style: TextStyle(
                                                fontSize: 7.sp,
                                                fontWeight: FontWeight.bold))),
                                    DataColumn(
                                        label: Text('Customer',
                                            style: TextStyle(
                                                fontSize: 7.sp,
                                                fontWeight: FontWeight.bold))),
                                    DataColumn(
                                        label: Text('Created \nOn',
                                            style: TextStyle(
                                                fontSize: 7.sp,
                                                fontWeight: FontWeight.bold))),
                                    DataColumn(
                                        label: Text('Order \nTotal',
                                            style: TextStyle(
                                                fontSize: 7.sp,
                                                fontWeight: FontWeight.bold))),
                                    DataColumn(
                                        label: Text('Actions',
                                            style: TextStyle(
                                                fontSize: 7.sp,
                                                fontWeight: FontWeight.bold))),
                                  ],
                                  rows: [
                                    DataRow(cells: <DataCell>[
                                      DataCell(
                                        Container(
                                          width: text / 8,
                                          padding: EdgeInsets.only(top: 9),
                                          height: height / 15,
                                          child: TextField(
                                            maxLines: 1,
                                            decoration: InputDecoration(
                                              hintMaxLines: 1,
                                              border: OutlineInputBorder(),
                                            ),
                                          ),
                                        ),
                                      ),
                                      DataCell(Container(
                                        width: text / 8,
                                        height: height / 20,
                                        child: DropdownSearch<String>(
                                            mode: Mode.MENU,
                                            showSelectedItem: true,
                                            items: [
                                              "-Select-",
                                              "All",
                                              "New",
                                              "OnHold",
                                              "PendingPayment",
                                              "PaymentReceived",
                                              "PaymentFailed",
                                              "Invoiced",
                                              "Shipping",
                                              "Shipped",
                                              "Completed",
                                              "Canceled",
                                              "Refunded",
                                              "Closed",
                                              "OrderAccepted",
                                              "OrderPreparing",
                                              'ReadyForDelivery'
                                            ],
                                            popupItemDisabled: (String s) =>
                                                s.startsWith('-'),
                                            onChanged: print,
                                            selectedItem: "-Select-"),
                                      )),
                                      DataCell(
                                        Container(
                                          width: text / 8,
                                          height: height / 15,
                                          padding: EdgeInsets.only(top: 9),
                                          child: TextField(
                                            maxLines: 1,
                                            decoration: InputDecoration(
                                              hintMaxLines: 1,
                                              border: OutlineInputBorder(),
                                            ),
                                          ),
                                        ),
                                      ),
                                      DataCell(Container(
                                          width: text / 10,
                                          height: text / 4,
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                TextField(
                                                  readOnly: true,
                                                  controller: dateFrom,
                                                  decoration: InputDecoration(
                                                      hintText: 'From'),
                                                  onTap: () async {
                                                    var date =
                                                        await showDatePicker(
                                                            context: context,
                                                            initialDate:
                                                                DateTime.now(),
                                                            firstDate:
                                                                DateTime(1900),
                                                            lastDate:
                                                                DateTime(2100));
                                                    dateFrom.text = date
                                                        .toString()
                                                        .substring(0, 10);
                                                  },
                                                ),
                                                TextField(
                                                  readOnly: true,
                                                  controller: dateTo,
                                                  decoration: InputDecoration(
                                                      hintText: 'To'),
                                                  onTap: () async {
                                                    var date =
                                                        await showDatePicker(
                                                            context: context,
                                                            initialDate:
                                                                DateTime.now(),
                                                            firstDate:
                                                                DateTime(1900),
                                                            lastDate:
                                                                DateTime(2100));
                                                    dateTo.text = date
                                                        .toString()
                                                        .substring(0, 10);
                                                  },
                                                )
                                              ]))),
                                      DataCell(Text('')),
                                      DataCell(Text('')),
                                    ]),
                                  ],
                                ),
                              ),
                              Container(
                                width: text / 1,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(7)),
                                padding: EdgeInsets.symmetric(vertical: 10),
                                child: DataTable(
                                  columnSpacing: 5,
                                  headingRowHeight: 40,
                                  dividerThickness: 2,
                                  columns: [
                                    DataColumn(
                                        label: Text('0 records found',
                                            style: TextStyle(
                                                fontSize: 7.sp,
                                                fontWeight: FontWeight.bold))),
                                    DataColumn(label: Text('')),
                                    DataColumn(label: Text('')),
                                    DataColumn(label: Text('')),
                                    DataColumn(label: Text('')),
                                    DataColumn(label: Text('')),
                                  ],
                                  rows: [
                                    DataRow(cells: [
                                      DataCell(Text('')),
                                      DataCell(Text('')),
                                      DataCell(Text('')),
                                      DataCell(Text('')),
                                      DataCell(Text('')),
                                      DataCell(Text('')),
                                    ]),
                                  ],
                                ),
                              ),
                            ]))
                  ],
                ))
          ])
        ])));
  }
}
