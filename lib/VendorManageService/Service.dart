import 'package:flutter/material.dart';
import 'package:iconnexz/components/side_menu.dart';
import 'package:iconnexz/components/sidebar.dart';
import 'package:iconnexz/constants.dart';
import 'package:iconnexz/controllers/MenuController.dart';
import 'package:iconnexz/responsive.dart';
import 'package:provider/provider.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:sizer/sizer.dart';

class Service extends StatefulWidget {
  @override
  _Service createState() => _Service();
}

class _Service extends State<Service> {
  int navIndex = 2;
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
                                    Text('Services',
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
                                          SizedBox(height: text / 80),
                                          Container(
                                            width: text / 8.4,
                                            height: text / 60,
                                            // ignore: deprecated_member_use
                                            child: RaisedButton(
                                              onPressed: () {
                                                Navigator.pushNamed(
                                                    context, '/CreateService');
                                              },
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          6.0)),
                                              padding: EdgeInsets.all(0.0),
                                              child: Ink(
                                                decoration: BoxDecoration(
                                                    color: Color(0xFF483D8B),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6.0)),
                                                child: Container(
                                                    constraints: BoxConstraints(
                                                        maxWidth: text / 8.2,
                                                        minHeight: text / 6.2),
                                                    alignment: Alignment.center,
                                                    child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Icon(
                                                            Icons.add,
                                                            size: text / 60,
                                                            color: Colors.white,
                                                          ),
                                                          SizedBox(
                                                            width: text / 400,
                                                          ),
                                                          Text(
                                                            "Create Services",
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize:
                                                                    text / 90),
                                                          ),
                                                        ])),
                                              ),
                                            ),
                                          ),
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
                                  columnSpacing: height / 200,
                                  headingRowHeight: 60,
                                  dataRowHeight: 100,
                                  dividerThickness: 2,
                                  columns: [
                                    DataColumn(
                                        label: Text('Product \nImage',
                                            style: TextStyle(
                                                fontSize: 7.sp,
                                                fontWeight: FontWeight.bold))),
                                    DataColumn(
                                        label: Text('Name',
                                            style: TextStyle(
                                                fontSize: 7.sp,
                                                fontWeight: FontWeight.bold))),
                                    DataColumn(
                                        label: Text('Stock \nQuantity',
                                            style: TextStyle(
                                                fontSize: 7.sp,
                                                fontWeight: FontWeight.bold))),
                                    DataColumn(
                                        label: Text('Is \nPublished',
                                            style: TextStyle(
                                                fontSize: 7.sp,
                                                fontWeight: FontWeight.bold))),
                                    DataColumn(
                                        label: Text('Created \nOn',
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
                                      DataCell(Text('')),
                                      DataCell(
                                        Container(
                                          padding: EdgeInsets.only(top: 6),
                                          width: text / 8,
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
                                      DataCell(Text('')),
                                      DataCell(Container(
                                        width: text / 8,
                                        height: height / 20,
                                        child: DropdownSearch<String>(
                                            mode: Mode.MENU,
                                            showSelectedItem: true,
                                            items: [
                                              "-Select-",
                                              "All",
                                              "Yes",
                                              'No',
                                            ],
                                            popupItemDisabled: (String s) =>
                                                s.startsWith('-'),
                                            onChanged: print,
                                            selectedItem: "-Select-"),
                                      )),
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
