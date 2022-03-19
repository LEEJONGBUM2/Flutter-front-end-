import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconnexz/components/side_menu.dart';
import 'package:iconnexz/components/sidebar.dart';
import 'package:iconnexz/constants.dart';
import 'package:iconnexz/controllers/MenuController.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:provider/provider.dart';
import 'package:file_selector/file_selector.dart';
import 'package:iconnexz/responsive.dart';

class CreateService extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<CreateService>
    with SingleTickerProviderStateMixin {
  int navIndex = 2;
  bool isChecked = false;
  final _scrollController = ScrollController();
  late TabController _controller;
  final priceStart = TextEditingController();
  final priceEnd = TextEditingController();
  final thumbnail = TextEditingController();
  final thumbnail2 = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 3, vsync: this);
  }

  _openImageFile(BuildContext context) async {
    final XTypeGroup typeGroup = XTypeGroup(
      label: 'images',
      extensions: ['jpg', 'png'],
    );
    final List<XFile> files = await openFiles(acceptedTypeGroups: [typeGroup]);
    if (files.isEmpty) {
      // Operation was canceled by the user.
      return;
    }
    final XFile file = files[0];
    return file.name;
  }

  _openImagesFile(BuildContext context) async {
    final XTypeGroup jpgsTypeGroup = XTypeGroup(
      label: 'JPEGs',
      extensions: ['jpg', 'jpeg'],
    );
    final XTypeGroup pngTypeGroup = XTypeGroup(
      label: 'PNGs',
      extensions: ['png'],
    );
    final List<XFile> files = await openFiles(acceptedTypeGroups: [
      jpgsTypeGroup,
      pngTypeGroup,
    ]);
    if (files.isEmpty) {
      // Operation was canceled by the user.
      return;
    }
    return [files.length.toString(), "files"];
  }

  @override
  Widget build(BuildContext context) {
    double text = MediaQuery.of(context).size.width;
    double text2 = MediaQuery.of(context).size.height;
    return Form(
      key: _formKey,
      child:Scaffold(
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
        body: Scrollbar(
            isAlwaysShown: true,
            controller: _scrollController,
            child: SingleChildScrollView(
                controller: _scrollController,
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
                                height: 1300,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white)),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 20,
                                                    vertical: 20),
                                                child: Text('Create Service',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontSize: text / 70,
                                                      color: Colors.white,
                                                    ))),
                                            new Container(
                                              decoration: new BoxDecoration(
                                                  color: Color(0xFF483D8B)),
                                              child: new TabBar(
                                                controller: _controller,
                                                tabs: [
                                                  new Tab(
                                                    icon:
                                                        const Icon(Icons.info),
                                                    text: 'General Information',
                                                  ),
                                                  new Tab(
                                                    icon: const Icon(
                                                        Icons.design_services),
                                                    text: 'Service Variations',
                                                  ),
                                                  new Tab(
                                                    icon: const Icon(
                                                        Icons.my_location),
                                                    text: 'Service Mapping',
                                                  ),
                                                ],
                                              ),
                                            ),
                                            new Container(
                                              height: 1100.0,
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: text / 10),
                                              child: new TabBarView(
                                                controller: _controller,
                                                children: <Widget>[
                                                  Container(
                                                      child: Column(
                                                          children: <Widget>[
                                                        SizedBox(
                                                          height: 10,
                                                        ),
                                                        new Card(
                                                          child: new ListTile(
                                                            leading: const Icon(
                                                                Icons.list),
                                                            title:
                                                                new TextFormField(
                                                                  validator: (value) {
    if (value == null || value.isEmpty) {
      return 'Please enter service name';
    }
    return null;
  },
                                                              decoration:
                                                                  const InputDecoration(
                                                                      hintText:
                                                                          'Service Name'),
                                                            ),
                                                          ),
                                                        ),
                                                        new Card(
                                                          child: new ListTile(
                                                            leading: const Icon(
                                                                Icons
                                                                    .description),
                                                            title:
                                                                new TextFormField(
                                                                   validator: (value) {
    if (value == null || value.isEmpty) {
      return 'Please enter service description';
    }
    return null;
  },
                                                              decoration:
                                                                  const InputDecoration(
                                                                      hintText:
                                                                          'Service Description'),
                                                            ),
                                                          ),
                                                        ),
                                                        new Card(
                                                          child: new ListTile(
                                                            leading: const Icon(
                                                                Icons
                                                                    .add_chart),
                                                            title:
                                                                new TextFormField(
                                                                   validator: (value) {
    if (value == null || value.isEmpty) {
      return 'Please enter ssu';
    }
    return null;
  },
                                                              decoration:
                                                                  const InputDecoration(
                                                                      hintText:
                                                                          'SSU'),
                                                            ),
                                                          ),
                                                        ),
                                                        new Card(
                                                          child: new ListTile(
                                                            leading: const Icon(
                                                                Icons
                                                                    .price_change_outlined),
                                                            title:
                                                                new TextFormField(
                                                                   validator: (value) {
    if (value == null || value.isEmpty) {
      return 'Please enter service price';
    }
    return null;
  },
                                                              decoration:
                                                                  const InputDecoration(
                                                                      hintText:
                                                                          'Service Price*'),
                                                            ),
                                                          ),
                                                        ),
                                                        new Card(
                                                          child: new ListTile(
                                                            leading: const Icon(
                                                                Icons
                                                                    .production_quantity_limits),
                                                            title:
                                                                new TextFormField(
                                                                   validator: (value) {
    if (value == null || value.isEmpty) {
      return 'Please enter stock';
    }
    return null;
  },
                                                              keyboardType:
                                                                  TextInputType
                                                                      .number,
                                                              inputFormatters: [
                                                                new WhitelistingTextInputFormatter(
                                                                    RegExp(
                                                                        "[0-9]")),
                                                              ],
                                                              decoration:
                                                                  const InputDecoration(
                                                                      hintText:
                                                                          'Stock*'),
                                                            ),
                                                          ),
                                                        ),
                                                        new Card(
                                                          child: new ListTile(
                                                            leading: const Icon(
                                                                Icons
                                                                    .privacy_tip),
                                                            title:
                                                                new TextFormField(
                                                                   validator: (value) {
    if (value == null || value.isEmpty) {
      return 'Please enter service special price';
    }
    return null;
  },
                                                              decoration:
                                                                  const InputDecoration(
                                                                      hintText:
                                                                          'Service Special Price'),
                                                            ),
                                                          ),
                                                        ),
                                                        new Card(
                                                          child: new ListTile(
                                                            leading: const Icon(
                                                                Icons
                                                                    .calendar_today),
                                                            title:
                                                                new TextFormField(
                                                                   validator: (value) {
    if (value == null || value.isEmpty) {
      return 'Please enter special price start';
    }
    return null;
  },
                                                              readOnly: true,
                                                              controller:
                                                                  priceStart,
                                                              decoration:
                                                                  InputDecoration(
                                                                      hintText:
                                                                          'Special Price Start'),
                                                              onTap: () async {
                                                                var date = await showDatePicker(
                                                                    context:
                                                                        context,
                                                                    initialDate:
                                                                        DateTime
                                                                            .now(),
                                                                    firstDate:
                                                                        DateTime(
                                                                            1900),
                                                                    lastDate:
                                                                        DateTime(
                                                                            2100));
                                                                priceStart.text = date
                                                                    .toString()
                                                                    .substring(
                                                                        0, 10);
                                                              },
                                                            ),
                                                          ),
                                                        ),
                                                        new Card(
                                                          child: new ListTile(
                                                            leading: const Icon(
                                                                Icons
                                                                    .calendar_today),
                                                            title:
                                                                new TextFormField(
                                                                   validator: (value) {
    if (value == null || value.isEmpty) {
      return 'Please enter special price end';
    }
    return null;
  },
                                                              readOnly: true,
                                                              controller:
                                                                  priceEnd,
                                                              decoration:
                                                                  InputDecoration(
                                                                      hintText:
                                                                          'Special Price End'),
                                                              onTap: () async {
                                                                var date = await showDatePicker(
                                                                    context:
                                                                        context,
                                                                    initialDate:
                                                                        DateTime
                                                                            .now(),
                                                                    firstDate:
                                                                        DateTime(
                                                                            1900),
                                                                    lastDate:
                                                                        DateTime(
                                                                            2100));
                                                                priceEnd.text = date
                                                                    .toString()
                                                                    .substring(
                                                                        0, 10);
                                                              },
                                                            ),
                                                          ),
                                                        ),
                                                        new Card(
                                                          child: new ListTile(
                                                            leading: const Icon(
                                                                Icons
                                                                    .monetization_on),
                                                            title: new DropdownSearch<
                                                                    String>(
                                                                      validator: (String? item) {
    if (item == null)
      return "Select Tax Class";
    else
      return null;
  },
                                                                mode: Mode.MENU,
                                                                showSelectedItem:
                                                                    true,
                                                                items: [
                                                                  "Standard VAT"
                                                                ],
                                                                onChanged:
                                                                    print),
                                                          ),
                                                        ),
                                                        new Card(
                                                          child: new ListTile(
                                                            leading: const Icon(
                                                                Icons
                                                                    .add_a_photo),
                                                            title: TextFormField(
                                                               validator: (value) {
    if (value == null || value.isEmpty) {
      return 'Please enter thumbnail image';
    }
    return null;
  },
                                                              readOnly: true,
                                                              controller:
                                                                  thumbnail,
                                                              decoration:
                                                                  InputDecoration(
                                                                      hintText:
                                                                          'Select Thumbnail'),
                                                              onTap: () async {
                                                                var date =
                                                                    await _openImageFile(
                                                                        context);
                                                                thumbnail.text =
                                                                    date.toString();
                                                              },
                                                            ),
                                                          ),
                                                        ),
                                                        new Card(
                                                          child: new ListTile(
                                                            leading: const Icon(
                                                                Icons
                                                                    .add_a_photo_sharp),
                                                            title: TextFormField(
                                                               validator: (value) {
    if (value == null || value.isEmpty) {
      return 'Please enter service Image';
    }
    return null;
  },
                                                              readOnly: true,
                                                              controller:
                                                                  thumbnail2,
                                                              decoration:
                                                                  InputDecoration(
                                                                      hintText:
                                                                          'Select Service Images'),
                                                              onTap: () async {
                                                                var date =
                                                                    await _openImagesFile(
                                                                        context);
                                                                thumbnail2
                                                                        .text =
                                                                    date.toString();
                                                              },
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(height: 5),
                                                        Container(
                                                            width: 140,
                                                            color: Colors.white,
                                                            child:
                                                                Row(children: [
                                                              SizedBox(
                                                                width: 10,
                                                              ),
                                                              Text(
                                                                  'isPublished:'),
                                                              Checkbox(
                                                                  checkColor:
                                                                      Colors
                                                                          .white,
                                                                  value:
                                                                      isChecked,
                                                                  onChanged:
                                                                      (bool?
                                                                          value) {
                                                                    setState(
                                                                        () {
                                                                      isChecked =
                                                                          value!;
                                                                    });
                                                                  })
                                                            ])),
                                                        SizedBox(height: 10),
                                                        Container(
                                                            width: 230,
                                                            child: Row(
                                                                children: [
                                                                  Container(
                                                                    width: 100,
                                                                    height: 30,
                                                                    // ignore: deprecated_member_use
                                                                    child:
                                                                        RaisedButton(
                                                                      onPressed:
                                                                          () {if (_formKey.currentState!.validate()) {
      ; Navigator.pushNamed(
                                                                            context,
                                                                            '/CreateService');
                                                                      
    }},
                                                                      shape: RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(6.0)),
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              0.0),
                                                                      child:
                                                                          Ink(
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                Color(0xFF483D8B),
                                                                            borderRadius: BorderRadius.circular(6.0)),
                                                                        child: Container(
                                                                            constraints: BoxConstraints(maxWidth: 100, minHeight: 10),
                                                                            alignment: Alignment.center,
                                                                            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                              Icon(
                                                                                Icons.check,
                                                                                size: 25,
                                                                                color: Colors.white,
                                                                              ),
                                                                              SizedBox(
                                                                                width: 10,
                                                                              ),
                                                                              Text(
                                                                                "Save",
                                                                                textAlign: TextAlign.center,
                                                                                style: TextStyle(color: Colors.white, fontSize: 15),
                                                                              ),
                                                                            ])),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  ),
                                                                  Container(
                                                                    width: 100,
                                                                    height: 30,
                                                                    // ignore: deprecated_member_use
                                                                    child:
                                                                        RaisedButton(
                                                                      onPressed:
                                                                          () {
                                                                        Navigator.pushNamed(
                                                                            context,
                                                                            '/CreateService');
                                                                      },
                                                                      shape: RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(6.0)),
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              0.0),
                                                                      child:
                                                                          Ink(
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                Colors.white,
                                                                            borderRadius: BorderRadius.circular(6.0)),
                                                                        child: Container(
                                                                            constraints: BoxConstraints(maxWidth: 100, minHeight: 10),
                                                                            alignment: Alignment.center,
                                                                            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                              Icon(
                                                                                Icons.cancel,
                                                                                size: 25,
                                                                                color: Colors.black,
                                                                              ),
                                                                              SizedBox(
                                                                                width: 10,
                                                                              ),
                                                                              Text(
                                                                                "Cancel",
                                                                                textAlign: TextAlign.center,
                                                                                style: TextStyle(color: Colors.black, fontSize: 15),
                                                                              ),
                                                                            ])),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ]))
                                                      ])),
                                                  Container(
                                                      child: Column(
                                                          children: <Widget>[
                                                        SizedBox(
                                                          height: 10,
                                                        ),
                                                        new Card(
                                                            child: new ListTile(
                                                          leading: Text(
                                                              "Available Options"),
                                                          title: new DropdownSearch<
                                                                  String>(
                                                                    validator: (String? item) {
    if (item == null)
      return "Select Option";
    else
      return null;
  },
                                                              mode: Mode.MENU,
                                                              showSelectedItem:
                                                                  true,
                                                              items: [
                                                                "Business",
                                                                "Eateries",
                                                                "Services"
                                                              ],
                                                              onChanged: print,)
                                                        )),
                                                        SizedBox(height: 5),
                                                        Container(
                                                          width: 150,
                                                          height: 30,
                                                          // ignore: deprecated_member_use
                                                          child: RaisedButton(
                                                            onPressed: () {if (_formKey.currentState!.validate()) {
      ; Navigator.pushNamed(
                                                                            context,
                                                                            '/CreateService');
                                                                      
    }},
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            6.0)),
                                                            padding:
                                                                EdgeInsets.all(
                                                                    0.0),
                                                            child: Ink(
                                                              decoration: BoxDecoration(
                                                                  color: Colors
                                                                      .white,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              6.0)),
                                                              child: Container(
                                                                  constraints: BoxConstraints(
                                                                      maxWidth:
                                                                          150,
                                                                      minHeight:
                                                                          10),
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child: Row(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .add,
                                                                          size:
                                                                              25,
                                                                          color:
                                                                              Colors.black,
                                                                        ),
                                                                        SizedBox(
                                                                          width:
                                                                              10,
                                                                        ),
                                                                        Text(
                                                                          "Add Option",
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          style: TextStyle(
                                                                              color: Colors.black,
                                                                              fontSize: 15),
                                                                        ),
                                                                      ])),
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(height: 10),
                                                        Container(
                                                          padding:
                                                              EdgeInsets.all(5),
                                                          width: 1000,
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          7)),
                                                          child: DataTable(
                                                            horizontalMargin:
                                                                text2 / 50,
                                                            columnSpacing:
                                                                text2 / 50,
                                                            columns: [
                                                              DataColumn(
                                                                  label: Text(
                                                                      'Name',
                                                                      style: TextStyle(
                                                                          fontSize: text2 /
                                                                              50,
                                                                          fontWeight:
                                                                              FontWeight.bold))),
                                                              DataColumn(
                                                                  label: Text(
                                                                      'Control',
                                                                      style: TextStyle(
                                                                          fontSize: text2 /
                                                                              50,
                                                                          fontWeight:
                                                                              FontWeight.bold))),
                                                            ],
                                                            rows: [
                                                              DataRow(cells: [
                                                                DataCell(Text(
                                                                    '',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            text2 /
                                                                                50,
                                                                        fontWeight:
                                                                            FontWeight.bold))),
                                                                DataCell(Text(
                                                                    '',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            text2 /
                                                                                50,
                                                                        fontWeight:
                                                                            FontWeight.bold))),
                                                              ]),
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(height: 10),
                                                        Container(
                                                            width: 230,
                                                            child: Row(
                                                                children: [
                                                                  Container(
                                                                    width: 100,
                                                                    height: 30,
                                                                    // ignore: deprecated_member_use
                                                                    child:
                                                                        RaisedButton(
                                                                      onPressed:
                                                                          () {
                                                                        Navigator.pushNamed(
                                                                            context,
                                                                            '/CreateService');
                                                                      },
                                                                      shape: RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(6.0)),
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              0.0),
                                                                      child:
                                                                          Ink(
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                Color(0xFF483D8B),
                                                                            borderRadius: BorderRadius.circular(6.0)),
                                                                        child: Container(
                                                                            constraints: BoxConstraints(maxWidth: 100, minHeight: 10),
                                                                            alignment: Alignment.center,
                                                                            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                              Icon(
                                                                                Icons.check,
                                                                                size: 25,
                                                                                color: Colors.white,
                                                                              ),
                                                                              SizedBox(
                                                                                width: 10,
                                                                              ),
                                                                              Text(
                                                                                "Save",
                                                                                textAlign: TextAlign.center,
                                                                                style: TextStyle(color: Colors.white, fontSize: 15),
                                                                              ),
                                                                            ])),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  ),
                                                                  Container(
                                                                    width: 100,
                                                                    height: 30,
                                                                    // ignore: deprecated_member_use
                                                                    child:
                                                                        RaisedButton(
                                                                      onPressed:
                                                                          () {
                                                                        Navigator.pushNamed(
                                                                            context,
                                                                            '/CreateService');
                                                                      },
                                                                      shape: RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(6.0)),
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              0.0),
                                                                      child:
                                                                          Ink(
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                Colors.white,
                                                                            borderRadius: BorderRadius.circular(6.0)),
                                                                        child: Container(
                                                                            constraints: BoxConstraints(maxWidth: 100, minHeight: 10),
                                                                            alignment: Alignment.center,
                                                                            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                              Icon(
                                                                                Icons.cancel,
                                                                                size: 25,
                                                                                color: Colors.black,
                                                                              ),
                                                                              SizedBox(
                                                                                width: 10,
                                                                              ),
                                                                              Text(
                                                                                "Cancel",
                                                                                textAlign: TextAlign.center,
                                                                                style: TextStyle(color: Colors.black, fontSize: 15),
                                                                              ),
                                                                            ])),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ]))
                                                      ])),
                                                  Container(
                                                      child: Column(
                                                          children: <Widget>[
                                                        SizedBox(
                                                          height: 10,
                                                        ),
                                                        new Card(
                                                          child: new ListTile(
                                                              leading: Checkbox(
                                                                  checkColor:
                                                                      Colors
                                                                          .white,
                                                                  value:
                                                                      isChecked,
                                                                  onChanged:
                                                                      (bool?
                                                                          value) {
                                                                    setState(
                                                                        () {
                                                                      isChecked =
                                                                          value!;
                                                                    });
                                                                  }),
                                                              title: Text(
                                                                  'Home & Office >> Business Services >> Temp >> Shahryar')),
                                                        ),
                                                        SizedBox(height: 10),
                                                        Container(
                                                            width: 230,
                                                            child: Row(
                                                                children: [
                                                                  Container(
                                                                    width: 100,
                                                                    height: 30,
                                                                    // ignore: deprecated_member_use
                                                                    child:
                                                                        RaisedButton(
                                                                      onPressed:
                                                                          () {
                                                                        Navigator.pushNamed(
                                                                            context,
                                                                            '/CreateService');
                                                                      },
                                                                      shape: RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(6.0)),
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              0.0),
                                                                      child:
                                                                          Ink(
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                Color(0xFF483D8B),
                                                                            borderRadius: BorderRadius.circular(6.0)),
                                                                        child: Container(
                                                                            constraints: BoxConstraints(maxWidth: 100, minHeight: 10),
                                                                            alignment: Alignment.center,
                                                                            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                              Icon(
                                                                                Icons.check,
                                                                                size: 25,
                                                                                color: Colors.white,
                                                                              ),
                                                                              SizedBox(
                                                                                width: 10,
                                                                              ),
                                                                              Text(
                                                                                "Save",
                                                                                textAlign: TextAlign.center,
                                                                                style: TextStyle(color: Colors.white, fontSize: 15),
                                                                              ),
                                                                            ])),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  ),
                                                                  Container(
                                                                    width: 100,
                                                                    height: 30,
                                                                    // ignore: deprecated_member_use
                                                                    child:
                                                                        RaisedButton(
                                                                      onPressed:
                                                                          () {
                                                                        Navigator.pushNamed(
                                                                            context,
                                                                            '/CreateService');
                                                                      },
                                                                      shape: RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(6.0)),
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              0.0),
                                                                      child:
                                                                          Ink(
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                Colors.white,
                                                                            borderRadius: BorderRadius.circular(6.0)),
                                                                        child: Container(
                                                                            constraints: BoxConstraints(maxWidth: 100, minHeight: 10),
                                                                            alignment: Alignment.center,
                                                                            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                              Icon(
                                                                                Icons.cancel,
                                                                                size: 25,
                                                                                color: Colors.black,
                                                                              ),
                                                                              SizedBox(
                                                                                width: 10,
                                                                              ),
                                                                              Text(
                                                                                "Cancel",
                                                                                textAlign: TextAlign.center,
                                                                                style: TextStyle(color: Colors.black, fontSize: 15),
                                                                              ),
                                                                            ])),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ]))
                                                      ]))
                                                ],
                                              ),
                                            ),
                                          ])
                                    ]))
                          ],
                        ))
                  ])
                ])))));
  }
}
