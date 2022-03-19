import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:iconnexz/SignUpVendorPage/SignUpVendorPage3.dart';
import 'package:iconnexz/SignUpVendorPage/SignUpVendorPage4.dart';
import 'package:iconnexz/SignUpVendorPage/SignUpVendorPage5.dart';

class SignUpVendor4a extends StatefulWidget {
  SignUpVendor4a({Key? key}) : super(key: key);

  @override
  _SignUpVendor4aState createState() => _SignUpVendor4aState();
}

class _SignUpVendor4aState extends State<SignUpVendor4a> {
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
                      width: 50,
                      height: 40,
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
                      "Business Type",
                      style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontSize: 14,
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
                    width: 40,
                  ),
                  Column(children: <Widget>[
                    Container(
                      width: 50,
                      height: 40,
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
                      "Business Information",
                      style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontSize: 14,
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
                    width: 40,
                  ),
                  Column(children: <Widget>[
                    Container(
                      width: 50,
                      height: 40,
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
                      "Vendor Information",
                      style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontSize: 14,
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
                    width: 40,
                  ),
                  Column(children: <Widget>[
                    Container(
                      width: 50,
                      height: 40,
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
                      "Business Category",
                      style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontSize: 14,
                          color: Colors.black),
                    ),
                  ]),
                  SizedBox(
                    width: 40,
                  ),
                  Column(children: <Widget>[
                    Container(
                      width: 50,
                      height: 40,
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
                      "Address",
                      style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontSize: 14,
                          color: Colors.black),
                    ),
                  ]),
                  SizedBox(
                    width: 40,
                  ),
                  Column(children: <Widget>[
                    Container(
                      width: 50,
                      height: 40,
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
                      "Bank Information",
                      style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontSize: 14,
                          color: Colors.black),
                    ),
                  ]),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 45.0,
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
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ]),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(children: <Widget>[
                    Container(
                      height: 35.0,
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
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 35.0,
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
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
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
