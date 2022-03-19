import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:getwidget/getwidget.dart';

class SignUpVendor6 extends StatefulWidget {
  SignUpVendor6({Key? key}) : super(key: key);

  @override
  _SignUpVendor6State createState() => _SignUpVendor6State();
}

class _SignUpVendor6State extends State<SignUpVendor6> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String dropdownValue = 'Select a Bank     ';
  List<Widget> pageChildren(double width) {
    return <Widget>[
      Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
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
                            color: Colors.green,
                            shape: BoxShape.circle,
                            border: new Border.all(
                              color: Colors.black,
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
              ],
            ),
            Column(
              children: <Widget>[
                Row(children: [
                  Container(
                    width: 400,
                    alignment: Alignment(1.0, -1.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        //mainAxisAlignment: MainAxisAlignment.start,
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Bank Information",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0,
                                color: Colors.grey[700]),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            width: 30,
                            child: Divider(
                              color: Colors.yellow,
                              //color: kPrimaryColor,
                              thickness: 4,
                            ),
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "Bank Name",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 17,
                                      color: Colors.grey),
                                ),
                                SizedBox(
                                  width: 105,
                                ),
                                Expanded(
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        width: 160,
                                        //height: 500,
                                        //padding: EdgeInsets.symmetric(vertical: 30),
                                        //color: Color(0xffD3D3D3),
                                        child: DropdownButton<String>(
                                          value: dropdownValue,
                                          icon:
                                              const Icon(Icons.arrow_drop_down),
                                          iconSize: 30,
                                          elevation: 55,
                                          style: const TextStyle(
                                              color: Colors.grey, fontSize: 15),
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
                                            'Select a Bank     ',
                                            'Hong Leong Bank   ',
                                            'CIMB Bank         ',
                                            'May Bank          ',
                                            'Affin Bank        ',
                                            'Alliance Bank     ',
                                          ].map<DropdownMenuItem<String>>(
                                              (String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 30,
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            child: TextFormField(
                              keyboardType: TextInputType.phone,
                              inputFormatters: [
                                WhitelistingTextInputFormatter(RegExp('[0-9]')),
                              ],
                              //   controller: _textEditingController,
                              validator: (value) {
                                return value!.isNotEmpty
                                    ? null
                                    : "Please Enter Bank Account Number";
                              },
                              decoration: InputDecoration(
                                hintText: "Bank Account Number*",
                                labelText: "Bank Account Number*",
                                suffixIcon: Icon(
                                  Icons.add_ic_call,
                                ),
                              ),
                            ),
                            width: 400,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Container(
                    width: 400,
                    alignment: Alignment(-0.8, -0.8),
                    child: SingleChildScrollView(
                      child: Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          //crossAxisAlignment: CrossAxisAlignment.center,

                          ),
                    ),
                  ),
                ]),
                Row(children: <Widget>[
                  SizedBox(
                    width: 110,
                  ),
                  Container(
                    height: 35.0,
                    // ignore: deprecated_member_use
                    child: GFButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/SignupVendor5');
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
                        if (_formKey.currentState!.validate()) {
                          Navigator.pushNamed(context, '/Login');
                        }
                      },
                      color: GFColors.DANGER,
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
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ],
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width / 2),
          );
        } else {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width / 2),
          );
        }
      },
    );
  }
}
