import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:getwidget/getwidget.dart';
import 'package:iconnexz/SignUpVendorPage/SignUpVendorPage2.dart';
import 'package:iconnexz/SignUpVendorPage/SignUpVendorPage4a.dart';

class SignUpVendor5M extends StatefulWidget {
  SignUpVendor5M({Key? key}) : super(key: key);

  @override
  _SignUpVendor5MState createState() => _SignUpVendor5MState();
}

class _SignUpVendor5MState extends State<SignUpVendor5M> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String dropdownValue = 'Select a Country  ';
  String dropdownValue1 = 'Select a State     ';
  String dropdownValue2 = 'Select a City      ';
  String dropdownValue3 = '9:30 AM    ';
  String dropdownValue4 = '8:30 PM    ';
  int selectedValue = 1;
  int selectedValue1 = 1;

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
                          color: Colors.green,
                          shape: BoxShape.circle,
                          border: new Border.all(
                            color: Colors.black,
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
                            "Address",
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
                              color: Colors.cyan,
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
                                    : "Please Enter Address";
                              },
                              decoration: InputDecoration(
                                hintText: "Address*",
                                labelText: "Address*",
                                suffixIcon: Icon(
                                  Icons.domain,
                                ),
                              ),
                            ),
                            width: 290,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "Country",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: Colors.grey),
                                ),
                                SizedBox(
                                  width: 79,
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Container(
                                        width: 120,
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
                                            'Select a Country  ',
                                            'China             ',
                                            'Malaysia          ',
                                            'Pakistan          ',
                                            'South Korea       ',
                                            'USA               ',
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
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "State",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: Colors.grey),
                                ),
                                SizedBox(
                                  width: 90,
                                ),
                                Expanded(
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        width: 122,
                                        //height: 500,
                                        //padding: EdgeInsets.symmetric(vertical: 30),
                                        //color: Color(0xffD3D3D3),
                                        child: DropdownButton<String>(
                                          value: dropdownValue1,
                                          icon:
                                              const Icon(Icons.arrow_drop_down),
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
                                            'Select a State     ',
                                            'Johor              ',
                                            'Selangor           ',
                                            'Federal Territory  ',
                                            'Malacca            ',
                                            'Negeri Sembilan    ',
                                            'Penang             ',
                                            'Perak              ',
                                            'Sabah              ',
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
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "City",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: Colors.grey),
                                ),
                                SizedBox(
                                  width: 90,
                                ),
                                Expanded(
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        width: 120,
                                        //height: 500,
                                        //padding: EdgeInsets.symmetric(vertical: 30),
                                        //color: Color(0xffD3D3D3),
                                        child: DropdownButton<String>(
                                          value: dropdownValue2,
                                          icon:
                                              const Icon(Icons.arrow_drop_down),
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
                                              dropdownValue2 = newValue!;
                                            });
                                          },
                                          items: <String>[
                                            'Select a City      ',
                                            'Kuala Lumpur       ',
                                            'Shah Alam          ',
                                            'Petaling Jaya      ',
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
                                    : "Please Enter Postcode";
                              },

                              decoration: InputDecoration(
                                hintText: "Postcode*",
                                labelText: "Postcode*",
                                suffixIcon: Icon(
                                  Icons.local_offer,
                                ),
                              ),
                            ),
                            width: 290,
                          ),
                          Container(
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              validator: (value) {
                                return value!.isNotEmpty
                                    ? null
                                    : "Please Enter Shop Latitude";
                              },
                              decoration: InputDecoration(
                                hintText: 'Shop Latitude',
                                labelText: 'Shop Latitude',
                                suffixIcon: Icon(
                                  Icons.location_pin,
                                ),
                              ),
                            ),
                            width: 400,
                          ),
                          Container(
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              validator: (value) {
                                return value!.isNotEmpty
                                    ? null
                                    : "Please Enter Shop Longitude";
                              },
                              decoration: InputDecoration(
                                hintText: 'Shop Longitude',
                                labelText: 'Shop Longitude',
                                suffixIcon: Icon(
                                  Icons.location_searching,
                                ),
                              ),
                            ),
                            width: 400,
                          ),
                          SizedBox(
                            height: 30,
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
                          Container(
                            width: 30,
                            child: Divider(
                              color: Colors.cyan,
                              //color: kPrimaryColor,
                              thickness: 4,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Do you have your own Delivery Team?",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Container(
                            color: Colors.yellow[50],
                            width: 300,
                            height: 40,
                            child: RadioListTile(
                              value: 1,
                              groupValue: selectedValue,
                              title: Text('Yes'),
                              onChanged: (value) =>
                                  setState(() => selectedValue = 1),
                            ),
                          ),
                          Container(
                            color: Colors.yellow[100],
                            width: 300,
                            height: 40,
                            child: RadioListTile(
                              value: 0,
                              groupValue: selectedValue,
                              title: Text('No'),
                              onChanged: (value) =>
                                  setState(() => selectedValue = 0),
                            ),
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          Text(
                            "How do you calculate your delivery fees?",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Container(
                            color: Colors.yellow[50],
                            width: 300,
                            height: 40,
                            child: RadioListTile(
                              value: 1,
                              groupValue: selectedValue1,
                              title: Text('Flat Rate'),
                              onChanged: (value) =>
                                  setState(() => selectedValue1 = 1),
                            ),
                          ),
                          Container(
                            color: Colors.yellow[100],
                            width: 300,
                            height: 40,
                            child: RadioListTile(
                              value: 0,
                              groupValue: selectedValue1,
                              title: Text('Distance Based'),
                              onChanged: (value) =>
                                  setState(() => selectedValue1 = 0),
                            ),
                          ),
                          Container(
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              validator: (value) {
                                return value!.isNotEmpty
                                    ? null
                                    : "Please Enter Flat Rate";
                              },
                              decoration: InputDecoration(
                                hintText: 'RM ???',
                                labelText: 'Flat Rate',
                                suffixIcon: Icon(
                                  Icons.local_shipping,
                                ),
                              ),
                            ),
                            width: 400,
                          ),
                          Container(
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              validator: (value) {
                                return value!.isNotEmpty
                                    ? null
                                    : "Please Enter For First";
                              },
                              decoration: InputDecoration(
                                hintText: 'KM ???',
                                labelText: 'For First',
                                suffixIcon: Icon(
                                  Icons.local_shipping_outlined,
                                ),
                              ),
                            ),
                            width: 400,
                          ),
                          Container(
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              validator: (value) {
                                return value!.isNotEmpty
                                    ? null
                                    : "Please Enter Every additional 1KM Charge";
                              },
                              decoration: InputDecoration(
                                hintText: 'RM ???',
                                labelText: 'Every additional 1KM Charge',
                                suffixIcon: Icon(
                                  Icons.local_shipping,
                                ),
                              ),
                            ),
                            width: 400,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  height: 28.0,
                                  // ignore: deprecated_member_use
                                  child: GFButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, '/SignupVendor4a');
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
                                      if (_formKey.currentState!.validate()) {
                                        Navigator.pushNamed(
                                            context, '/SignupVendor6');
                                      }
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
                          SizedBox(
                            height: 15,
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
