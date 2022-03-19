import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:iconnexz/SignUpVendorPage/SignUpVendorPage2.dart';
import 'package:iconnexz/widgets/ActionButton/action_next_button.dart';

class SignUpVendor1 extends StatefulWidget {
  SignUpVendor1({Key? key}) : super(key: key);

  @override
  _SignUpVendor1State createState() => _SignUpVendor1State();
}

class _SignUpVendor1State extends State<SignUpVendor1> {
  String dropdownValue = 'Individual       ';
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
                          color: Colors.green,
                          shape: BoxShape.circle,
                          border: new Border.all(
                            color: Colors.black,
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
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: new Border.all(
                            color: Colors.grey,
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
              Column(
                children: [
                  Row(children: <Widget>[
                    SizedBox(
                      height: 60,
                    ),
                    Text(
                      "Please Select Business Type",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                    Text(
                      "*",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.red),
                    ),
                  ]),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 128,
                        //height: 500,
                        //padding: EdgeInsets.symmetric(vertical: 30),
                        //color: Color(0xffD3D3D3),
                        child: DropdownButton<String>(
                          value: dropdownValue,
                          icon: const Icon(Icons.arrow_drop_down),
                          iconSize: 30,
                          elevation: 55,
                          style: const TextStyle(color: Colors.deepPurple),
                          underline: Container(
                            height: 4,
                            color: Colors.deepPurpleAccent,
                          ),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue!;
                            });
                          },
                          items: <String>[
                            'Individual       ',
                            'Organization     '
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(children: <Widget>[
                    SizedBox(
                      width: 50,
                    ),
                    Container(
                      height: 35.0,
                      // ignore: deprecated_member_use
                      child: GFButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/SignupVendor2');
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
                      width: 50,
                    )
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
