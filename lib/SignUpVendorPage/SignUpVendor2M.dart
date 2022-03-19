import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:getwidget/getwidget.dart';
import 'package:iconnexz/SignUpVendorPage/SignUpVendorPage1.dart';
import 'package:iconnexz/SignUpVendorPage/SignUpVendorPage3.dart';
import 'package:iconnexz/widgets/ActionButton/action_back_button.dart';
import 'package:iconnexz/widgets/ActionButton/action_next_button.dart';
import 'package:image_picker/image_picker.dart';

class SignUpVendor2M extends StatefulWidget {
  SignUpVendor2M({Key? key}) : super(key: key);

  @override
  _SignUpVendor2MState createState() => _SignUpVendor2MState();
}

class _SignUpVendor2MState extends State<SignUpVendor2M> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  File? _image;
  final picker = ImagePicker();

  void Photo(ImageSource source) async {
    final _picker = ImagePicker();
    final PickedFile? pickedFile =
        await _picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        print('No image selected.');
        //_image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
    final bytes = await pickedFile!.readAsBytes();
  }

  void main(List<String> arguments) {
    readFileByteByByte().then((done) {
      print('done');
    });
    print('waiting...');
    print('do something else while waiting...');
  }

  Future<bool> readFileByteByByte() async {
    //final fileName = 'C:\\code\\test\\file_test\\bin\\main.dart'; // use your image file name here
    final fileName = Platform.script
        .toFilePath(); //this will read this text file as an example
    final script = File(fileName);
    final file = await script.open(mode: FileMode.read);

    var byte;
    while (byte != -1) {
      byte = await file.readByte();
      if (byte == ';'.codeUnitAt(0)) {
        //check if byte is semicolon
        print(byte);
      }
    }
    await file.close();
    return (true);
  }

  String dropdownValue = '9:30 AM    ';
  String dropdownValue1 = '8:30 PM    ';
  bool isChecked = false;
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;
  bool isChecked5 = false;
  bool isChecked6 = false;
  List<Widget> pageChildren(double width) {
    return <Widget>[
      Form(
          key: _formKey,
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: <
              Widget>[
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
                          color: Colors.green,
                          shape: BoxShape.circle,
                          border: new Border.all(
                            color: Colors.black,
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
                  Container(
                    width: 290,
                    //alignment: Alignment(0.8, -0.8),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        //mainAxisAlignment: MainAxisAlignment.start,
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Business Information",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 23.0,
                                color: Colors.grey[700]),
                          ),
                          SizedBox(
                            height: 8,
                          ),
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
                              keyboardType: TextInputType.text,
                              //   controller: _textEditingController,
                              validator: (value) {
                                return value!.isNotEmpty
                                    ? null
                                    : "Please Enter Vendor Name";
                              },
                              decoration: InputDecoration(
                                hintText: "Vendor Name*",
                                labelText: "Vendor Name*",
                                suffixIcon: Icon(
                                  Icons.domain,
                                ),
                              ),
                            ),
                            width: 290,
                          ),
                          Container(
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              validator: (value) {
                                return value!.isNotEmpty
                                    ? null
                                    : "Please Enter Register Of Company Number";
                              },
                              inputFormatters: [
                                WhitelistingTextInputFormatter(RegExp('[0-9]')),
                              ],
                              decoration: InputDecoration(
                                hintText: 'Register Of Company Number',
                                labelText: 'Register Of Company Number',
                                suffixIcon: Icon(
                                  Icons.dvr,
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
                                    : "Please Enter Email";
                              },
                              decoration: InputDecoration(
                                hintText: "Email*",
                                labelText: "Email*",
                                suffixIcon: Icon(
                                  Icons.event_note,
                                ),
                              ),
                            ),
                            width: 290,
                          ),
                          Container(
                            child: TextFormField(
                              keyboardType: TextInputType.text,

                              //   controller: _textEditingController,
                              validator: (value) {
                                return value!.isNotEmpty
                                    ? null
                                    : "Please Enter Company Description";
                              },
                              decoration: InputDecoration(
                                hintText: "Company Description*",
                                labelText: "Company Description*",
                                suffixIcon: Icon(
                                  Icons.flight_outlined,
                                ),
                              ),
                            ),
                            width: 290,
                          ),
                          Container(
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              validator: (value) {
                                return value!.isNotEmpty
                                    ? null
                                    : "Please Enter Introducer Code";
                              },
                              inputFormatters: [
                                WhitelistingTextInputFormatter(RegExp('[0-9]')),
                              ],
                              decoration: InputDecoration(
                                hintText: 'Introducer Code',
                                labelText: 'Introducer Code',
                                suffixIcon: Icon(
                                  Icons.dvr,
                                ),
                              ),
                            ),
                            width: 400,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 290,
                    alignment: Alignment(-1.0, -1.0),
                    child: SingleChildScrollView(
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: 8,
                          ),
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
                            width: 290,
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
                                  Icons.lock_outline,
                                ),
                              ),
                            ),
                            width: 290,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "Rest Day",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Colors.black),
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Text(
                                        "Monday",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                            color: Colors.grey),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Checkbox(
                                          value: isChecked,
                                          onChanged: (checked) {
                                            setState(() {
                                              isChecked = checked!;
                                            });
                                          }),
                                    ],
                                  ),
                                ),
                              ]),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                "Tuesday",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Colors.grey),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Checkbox(
                                  value: isChecked1,
                                  onChanged: (checked) {
                                    setState(() {
                                      isChecked1 = checked!;
                                    });
                                  }),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                "Wednesday",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Colors.grey),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Checkbox(
                                  value: isChecked2,
                                  onChanged: (checked) {
                                    setState(() {
                                      isChecked2 = checked!;
                                    });
                                  }),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                "Thursday",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Colors.grey),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Checkbox(
                                  value: isChecked3,
                                  onChanged: (checked) {
                                    setState(() {
                                      isChecked3 = checked!;
                                    });
                                  }),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                "Friday",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Colors.grey),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Checkbox(
                                  value: isChecked4,
                                  onChanged: (checked) {
                                    setState(() {
                                      isChecked4 = checked!;
                                    });
                                  }),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                "Saturday",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Colors.grey),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Checkbox(
                                  value: isChecked5,
                                  onChanged: (checked) {
                                    setState(() {
                                      isChecked5 = checked!;
                                    });
                                  }),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                "Sunday",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Colors.grey),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Checkbox(
                                  value: isChecked6,
                                  onChanged: (checked) {
                                    setState(() {
                                      isChecked6 = checked!;
                                    });
                                  }),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Business Hours",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 102,
                                //height: 500,
                                //padding: EdgeInsets.symmetric(vertical: 30),
                                //color: Color(0xffD3D3D3),
                                child: DropdownButton<String>(
                                  value: dropdownValue,
                                  icon: const Icon(Icons.arrow_drop_down),
                                  iconSize: 30,
                                  elevation: 55,
                                  style: const TextStyle(
                                      color: Colors.grey, fontSize: 11),
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
                                    '9:30 AM    ',
                                    '10:00 AM   ',
                                    '10:30 AM   ',
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
                              Container(
                                width: 100,
                                //height: 500,
                                //padding: EdgeInsets.symmetric(vertical: 30),
                                //color: Color(0xffD3D3D3),
                                child: DropdownButton<String>(
                                  value: dropdownValue1,
                                  icon: const Icon(Icons.arrow_drop_down),
                                  iconSize: 30,
                                  elevation: 55,
                                  style: const TextStyle(
                                      color: Colors.grey, fontSize: 11),
                                  underline: Container(
                                    height: 4,
                                    color: Colors.deepPurpleAccent,
                                  ),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropdownValue1 = newValue!;
                                    });
                                  },
                                  items: <String>[
                                    '8:30 PM    ',
                                    '9:00 PM    ',
                                    '9:30 PM    ',
                                  ].map<DropdownMenuItem<String>>(
                                      (String value) {
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
                            height: 11,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  "Company Image",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13,
                                      color: Colors.black),
                                ),
                                Text(
                                  "*",
                                  style: TextStyle(
                                      // fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                      color: Colors.red),
                                ),
                              ]),
                          SizedBox(
                            height: 10,
                          ),
                          Center(
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 77.0,
                              child: Center(
                                child: _image == null
                                    ? Text("Image Space")
                                    : Image.file(_image!),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 22,
                                child: RaisedButton(
                                  child: Text(
                                    'Select the file',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  onPressed: () => Photo(ImageSource.gallery),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(children: <Widget>[
                            SizedBox(
                              width: 55,
                            ),
                            Container(
                              height: 28.0,
                              // ignore: deprecated_member_use
                              child: GFButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, '/SignupVendor1');
                                },
                                color: GFColors.SECONDARY,
                                child: Text(
                                  'Back',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 28.0,
                              // ignore: deprecated_member_use
                              child: GFButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    Navigator.pushNamed(
                                        context, '/SignupVendor3');
                                  }
                                },
                                color: GFColors.SUCCESS,
                                child: Text(
                                  'Next',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ]),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
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
