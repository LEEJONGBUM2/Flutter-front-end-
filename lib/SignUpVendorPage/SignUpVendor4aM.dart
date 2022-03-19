import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:iconnexz/SignUpVendorPage/SignUpVendorPage3.dart';
import 'package:iconnexz/SignUpVendorPage/SignUpVendorPage4.dart';
import 'package:iconnexz/SignUpVendorPage/SignUpVendorPage5.dart';

class SignUpVendor4aM extends StatefulWidget {
  SignUpVendor4aM({Key? key}) : super(key: key);

  @override
  _SignUpVendor4aMState createState() => _SignUpVendor4aMState();
}

class _SignUpVendor4aMState extends State<SignUpVendor4aM> {
  String dropdownValue = 'Please Select Category   ';
  String dropdownValue1 = 'Select a Category        ';
  String dropdownValue2 = 'Select a Type of Business';
  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            Column(children: <Widget>[
              Row(
                children: [
                  Column(children: <Widget>[
                    Container(
                      width: 40,
                      height: 30,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: new Border.all(
                            color: Colors.grey,
                            width: 2.5,
                          ),
                        ),
                        child: Center(
                          child: Text('1'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Business \nType",
                      style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontSize: 12,
                          color: Colors.black),
                    ),
                    // Text(
                    //   "Services",
                    //   style: TextStyle(
                    //       fontWeight: FontWeight.bold,
                    //       fontSize: 28,
                    //      color: Colors.black),
                    // ),
                  ]),
                  SizedBox(
                    width: 20,
                  ),
                  Column(children: <Widget>[
                    Container(
                      width: 40,
                      height: 30,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: new Border.all(
                            color: Colors.grey,
                            width: 2.5,
                          ),
                        ),
                        child: Center(
                          child: Text('2'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Business \nInformation",
                      style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontSize: 12,
                          color: Colors.black),
                    ),
                    //  Text(
                    //    "Deliver",
                    //   style: TextStyle(
                    //        fontWeight: FontWeight.bold,
                    //        fontSize: 28,
                    //        color: Colors.black),
                    //  ),
                  ]),
                  SizedBox(
                    width: 20,
                  ),
                  Column(children: <Widget>[
                    Container(
                      width: 40,
                      height: 30,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: new Border.all(
                            color: Colors.grey,
                            width: 2.5,
                          ),
                        ),
                        child: Center(
                          child: Text('3'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Vendor \nInformation",
                      style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontSize: 12,
                          color: Colors.black),
                    ),
                    //   Text(
                    //     "Get Paid",
                    //     style: TextStyle(
                    //        fontWeight: FontWeight.bold,
                    //         fontSize: 28,
                    //         color: Colors.black),
                    //   ),
                  ]),
                  SizedBox(
                    width: 20,
                  ),
                  Column(children: <Widget>[
                    Container(
                      width: 40,
                      height: 30,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                          border: new Border.all(
                            color: Colors.black,
                            width: 2.5,
                          ),
                        ),
                        child: Center(
                          child: Text('4'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Business \nCategory",
                      style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontSize: 12,
                          color: Colors.black),
                    ),
                  ]),
                  SizedBox(
                    width: 20,
                  ),
                  Column(children: <Widget>[
                    Container(
                      width: 40,
                      height: 30,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: new Border.all(
                            color: Colors.grey,
                            width: 2.5,
                          ),
                        ),
                        child: Center(
                          child: Text('5'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Address\n",
                      style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontSize: 12,
                          color: Colors.black),
                    ),
                  ]),
                  SizedBox(
                    width: 20,
                  ),
                  Column(children: <Widget>[
                    Container(
                      width: 40,
                      height: 30,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: new Border.all(
                            color: Colors.grey,
                            width: 2.5,
                          ),
                        ),
                        child: Center(
                          child: Text('6'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Bank \nInformation",
                      style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontSize: 12,
                          color: Colors.black),
                    ),
                  ]),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 35.0,
                          width: 300.0,
                          // ignore: deprecated_member_use
                          child: GFButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUpVendorPage4()),
                              );
                            },
                            color: GFColors.PRIMARY,
                            child: Text(
                              '+ Add New Business Category*',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ]),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 28.0,
                          // ignore: deprecated_member_use
                          child: GFButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/SignupVendor3');
                            },
                            color: GFColors.SECONDARY,
                            child: Text(
                              'Back',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        Container(
                          height: 28.0,
                          // ignore: deprecated_member_use
                          child: GFButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/SignupVendor5');
                            },
                            color: GFColors.SUCCESS,
                            child: Text(
                              'Next',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ]),
                ],
              )
            ])
          ])),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (
        context,
        constraints,
      ) {
        if (constraints.maxWidth > 700) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: pageChildren(constraints.biggest.width / 2),
          );
        } else {
          return Column(
            children: pageChildren(constraints.biggest.width / 3),
          );
        }
      },
    );
  }
}
