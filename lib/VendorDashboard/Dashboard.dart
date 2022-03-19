import 'package:flutter/material.dart';
import 'package:iconnexz/components/side_menu.dart';
import 'package:iconnexz/components/sidebar.dart';
import 'package:iconnexz/constants.dart';
import 'package:iconnexz/controllers/MenuController.dart';
import 'package:iconnexz/header.dart';
import 'package:iconnexz/responsive.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class Dashboard extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Dashboard> {
  int navIndex = 0;
  @override
  Widget build(BuildContext context) {
    double text2 = MediaQuery.of(context).size.width;
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
            child: Column(children: [
          SizedBox(height: defaultPadding),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Expanded(
                flex: 5,
                child: Column(
                  children: [
                    Text(
                      'Dashboard',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 29,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Latest Orders',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      width: 1000,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(7)),
                      child: DataTable(
                        horizontalMargin: text2/80,
                        columnSpacing: text2/80,
                        columns: [
                          DataColumn(
                              label: Text('OrderId',
                                  style: TextStyle(
                                      fontSize: 7.sp,
                                      fontWeight: FontWeight.bold))),
                          DataColumn(
                              label: Text('Order\n Status',
                                  style: TextStyle(
                                      fontSize: 7.sp,
                                      fontWeight: FontWeight.bold))),
                          DataColumn(
                              label: Text('Customer',
                                  style: TextStyle(
                                      fontSize: 7.sp,
                                      fontWeight: FontWeight.bold))),
                          DataColumn(
                              label: Text('Created\n On',
                                  style: TextStyle(
                                      fontSize: 7.sp,
                                      fontWeight: FontWeight.bold))),
                          DataColumn(
                              label: Text('Order\n Total',
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
                          DataRow(cells: [
                            DataCell(Text('1',
                                style: TextStyle(
                                    fontSize: 8.sp,
                                    fontWeight: FontWeight.bold))),
                            DataCell(Text('Pending',
                                style: TextStyle(
                                    fontSize: 8.sp,
                                    fontWeight: FontWeight.bold))),
                            DataCell(Text('Shahryar',
                                style: TextStyle(
                                    fontSize: 8.sp,
                                    fontWeight: FontWeight.bold))),
                            DataCell(Text('20/06/21',
                                style: TextStyle(
                                    fontSize: 8.sp,
                                    fontWeight: FontWeight.bold))),
                            DataCell(Text('RM 12',
                                style: TextStyle(
                                    fontSize: 8.sp,
                                    fontWeight: FontWeight.bold))),
                            DataCell(Text('Confirm',
                                style: TextStyle(
                                    fontSize: 8.sp,
                                    fontWeight: FontWeight.bold))),
                          ]),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Most Popular Service',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      width: 1000,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(7)),
                      child: DataTable(
                        horizontalMargin: 8.sp,
                        columnSpacing: 8.sp,
                        columns: [
                          DataColumn(
                              label: Text('OrderId',
                                  style: TextStyle(
                                      fontSize: 7.sp,
                                      fontWeight: FontWeight.bold))),
                          DataColumn(
                              label: Text('Order\n Status',
                                  style: TextStyle(
                                      fontSize: 7.sp,
                                      fontWeight: FontWeight.bold))),
                          DataColumn(
                              label: Text('Customer',
                                  style: TextStyle(
                                      fontSize: 7.sp,
                                      fontWeight: FontWeight.bold))),
                          DataColumn(
                              label: Text('Created\n On',
                                  style: TextStyle(
                                      fontSize: 7.sp,
                                      fontWeight: FontWeight.bold))),
                          DataColumn(
                              label: Text('Order\n Total',
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
                          DataRow(cells: [
                            DataCell(Text('1',
                                style: TextStyle(
                                    fontSize: 8.sp,
                                    fontWeight: FontWeight.bold))),
                            DataCell(Text('Pending',
                                style: TextStyle(
                                    fontSize: 8.sp,
                                    fontWeight: FontWeight.bold))),
                            DataCell(Text('Shahryar',
                                style: TextStyle(
                                    fontSize: 8.sp,
                                    fontWeight: FontWeight.bold))),
                            DataCell(Text('20/06/21',
                                style: TextStyle(
                                    fontSize: 8.sp,
                                    fontWeight: FontWeight.bold))),
                            DataCell(Text('RM 12',
                                style: TextStyle(
                                    fontSize: 8.sp,
                                    fontWeight: FontWeight.bold))),
                            DataCell(Text('Confirm',
                                style: TextStyle(
                                    fontSize: 8.sp,
                                    fontWeight: FontWeight.bold))),
                          ]),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 80,
                    )
                  ],
                ))
          ])
        ])));
  }
}
