import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:getwidget/getwidget.dart';
import 'package:iconnexz/SignUpVendorPage/SignUpVendorPage2.dart';
import 'package:iconnexz/SignUpVendorPage/SignUpVendorPage4a.dart';

class SignUpVendor3 extends StatefulWidget {
  SignUpVendor3({Key? key}) : super(key: key);

  @override
  _SignUpVendor3State createState() => _SignUpVendor3State();
}

class _SignUpVendor3State extends State<SignUpVendor3> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _showPassword = false;
  bool _showPassword1 = false;
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
                            color: Colors.green,
                            shape: BoxShape.circle,
                            border: new Border.all(
                              color: Colors.black,
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
                            "Vendor Information",
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
                              color: Colors.red,
                              //color: kPrimaryColor,
                              thickness: 4,
                            ),
                          ),
                          Container(
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              //   controller: _textEditingController,
                              validator: (value) {
                                return value!.isNotEmpty
                                    ? null
                                    : "Please Enter Person In Charge Name";
                              },
                              decoration: InputDecoration(
                                hintText: "Person In Charge Name*",
                                labelText: "Person In Charge Name*",
                                suffixIcon: Icon(
                                  Icons.group_add,
                                ),
                              ),
                            ),
                            width: 400,
                          ),
                          Container(
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              //   controller: _textEditingController,
                              validator: (value) {
                                return value!.isNotEmpty
                                    ? null
                                    : "Please Enter Email Address";
                              },
                              decoration: InputDecoration(
                                hintText: "Email Address*",
                                labelText: "Email Address*",
                                suffixIcon: Icon(
                                  Icons.mail_outline,
                                ),
                              ),
                            ),
                            width: 400,
                          ),
                          Container(
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              obscureText: !_showPassword,
                              //   controller: _textEditingController,
                              validator: (value) {
                                if ((value!.length > 5) && value.isNotEmpty) {
                                  return null;
                                } else if ((value.length <= 5) &&
                                    (value.length >= 1)) {
                                  return "Please write down the password at least 6 digit or character";
                                } else {
                                  return "Please Enter Password";
                                }
                              },
                              decoration: InputDecoration(
                                hintText: "Password*",
                                labelText: "Password*",
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _showPassword = !_showPassword;
                                    });
                                  },
                                  child: Icon(
                                    _showPassword
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                  ),
                                ),
                                // suffixIcon: Icon(
                                //   Icons.lock_outline,
                                // ),
                              ),
                            ),
                            width: 400,
                          ),
                          Container(
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              obscureText: !_showPassword1,
                              //   controller: _textEditingController,
                              validator: (value) {
                                if ((value!.length > 5) && value.isNotEmpty) {
                                  return null;
                                } else if ((value.length <= 5) &&
                                    (value.length >= 1)) {
                                  return "Please write down the password at least 6 digit or character";
                                } else {
                                  return "Please Enter Confrim Password";
                                }
                              },
                              decoration: InputDecoration(
                                hintText: "Confirm Password*",
                                labelText: "Confirm Password*",
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _showPassword1 = !_showPassword1;
                                    });
                                  },
                                  child: Icon(
                                    _showPassword1
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                  ),
                                ),
                                // suffixIcon: Icon(
                                //   Icons.password_outlined,
                                // ),
                              ),
                            ),
                            width: 400,
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
                        children: <Widget>[
                          Container(
                            width: 30,
                            child: Divider(
                              color: Colors.orange,
                              //color: kPrimaryColor,
                              thickness: 4,
                            ),
                          ),
                          Container(
                            child: TextFormField(
                              keyboardType: TextInputType.phone,
                              // inputFormatters: [
                              //   WhitelistingTextInputFormatter(RegExp('[0-9]')),
                              // ],
                              //   controller: _textEditingController,
                              validator: (value) {
                                //String patttern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
                                String patttern =
                                    r'(^(?:[+0][1-9])?[0-9]{10,12}$)';

                                RegExp regExp = new RegExp(patttern);
                                if (value!.length == 0) {
                                  return 'Please enter mobile number';
                                } else if (!regExp.hasMatch(value)) {
                                  return 'Invalid Phone Number, Please enter valid mobile number';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                hintText: "Contact Number*",
                                labelText: "Contact Number*",
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
                          Container(
                            height: 35.0,
                            // ignore: deprecated_member_use
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6.0)),
                              padding: EdgeInsets.all(0.0),
                              onPressed: () {},
                              child: Ink(
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0xff2555be),
                                        Color(0xff2625be)
                                      ],
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                    ),
                                    borderRadius: BorderRadius.circular(6.0)),
                                child: Container(
                                  constraints: BoxConstraints(
                                      maxWidth: 90.0, minHeight: 50.0),
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Request OTP",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                WhitelistingTextInputFormatter(RegExp('[0-9]')),
                              ],
                              //   controller: _textEditingController,
                              validator: (value) {
                                return value!.isNotEmpty
                                    ? null
                                    : "Please Enter Verification Code";
                              },
                              decoration: InputDecoration(
                                hintText: "Verification Code*",
                                labelText: "Verification Code*",
                                suffixIcon: Icon(
                                  Icons.enhanced_encryption_outlined,
                                ),
                              ),
                            ),
                            width: 400,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(children: <Widget>[
                            SizedBox(
                              width: 110,
                            ),
                            Container(
                              height: 35.0,
                              // ignore: deprecated_member_use
                              child: GFButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, '/SignupVendor2');
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
                                    Navigator.pushNamed(
                                        context, '/SignupVendor4a');
                                  }
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
                      ),
                    ),
                  ),
                ]),
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
