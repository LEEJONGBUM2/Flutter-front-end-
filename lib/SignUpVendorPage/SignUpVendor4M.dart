import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:iconnexz/SignUpVendorPage/SignUpVendorPage3.dart';
import 'package:iconnexz/SignUpVendorPage/SignUpVendorPage4.dart';
import 'package:iconnexz/SignUpVendorPage/SignUpVendorPage5.dart';

class SignUpVendor4M extends StatefulWidget {
  SignUpVendor4M({Key? key}) : super(key: key);

  @override
  _SignUpVendor4MState createState() => _SignUpVendor4MState();
}

class _SignUpVendor4MState extends State<SignUpVendor4M> {
  String dropdownValue = 'Please Select Category   ';
  String dropdownValue1 = 'Select a Category        ';
  String dropdownValue2 = 'Select a Type of Business';
  String dropdownValue3 = 'Please Select Category   ';
  String dropdownValue4 = 'Select a Category        ';
  String dropdownValue5 = 'Select a Type of Food    ';
  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(children: <Widget>[
                    Text(
                      "Service Category",
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 15,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Container(
                      width: 141,
                      //height: 500,
                      //padding: EdgeInsets.symmetric(vertical: 30),
                      //color: Color(0xffD3D3D3),
                      child: DropdownButton<String>(
                        value: dropdownValue,
                        icon: const Icon(Icons.arrow_drop_down),
                        iconSize: 20,
                        elevation: 55,
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 11),
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
                          'Please Select Category   ',
                          'Beauty                   ',
                          'Eateries                 ',
                          'Education                ',
                          'Events                   ',
                          'Finance                  ',
                          'Healthcare               ',
                          'Home & Office            ',
                          'Industries               ',
                          'Leisure                  ',
                          'Promotions               ',
                          'RSVP                     ',
                          'Services                 ',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ]),
                  SizedBox(
                    width: 25,
                  ),
                  Column(children: <Widget>[
                    Text(
                      "Business Category",
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 15,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Container(
                      width: 141,
                      //height: 500,
                      //padding: EdgeInsets.symmetric(vertical: 30),
                      //color: Color(0xffD3D3D3),
                      child: DropdownButton<String>(
                        value: dropdownValue1,
                        icon: const Icon(Icons.arrow_drop_down),
                        iconSize: 20,
                        elevation: 55,
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 11),
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
                          'Select a Category        ',
                          'Bakery                   ',
                          'Beverage                 ',
                          'Catering                 ',
                          'Clubs & Bars             ',
                          'Food Stalls              ',
                          'Food Trucks              ',
                          'Gourmet                  ',
                          'Halal Cuisine            ',
                          'Home Cooking             ',
                          'Outlet Food              ',
                          'Restaurant               ',
                          'Scenic Places            ',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ]),
                  SizedBox(
                    width: 25,
                  ),
                  Column(children: <Widget>[
                    Text(
                      "Type of Business",
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 15,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Container(
                      width: 145,
                      //height: 500,
                      //padding: EdgeInsets.symmetric(vertical: 30),
                      //color: Color(0xffD3D3D3),
                      child: DropdownButton<String>(
                        value: dropdownValue2,
                        icon: const Icon(Icons.arrow_drop_down),
                        iconSize: 20,
                        elevation: 55,
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 11),
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
                          'Select a Type of Business',
                          'Cultural Foods           ',
                          'Event Dishes             ',
                          'Festive Dishes           ',
                          'Finger Food              ',
                          'Fusion Foods             ',
                          'Gourmet                  ',
                          'Halal Food               ',
                          'Malaysian Dishes         ',
                          'Venue Hosting            ',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ]),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(children: <Widget>[
                    Text(
                      "Country Category",
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 15,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Container(
                      width: 146,
                      //height: 500,
                      //padding: EdgeInsets.symmetric(vertical: 30),
                      //color: Color(0xffD3D3D3),
                      child: DropdownButton<String>(
                        value: dropdownValue3,
                        icon: const Icon(Icons.arrow_drop_down),
                        iconSize: 25,
                        elevation: 55,
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 11),
                        underline: Container(
                          height: 4,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue3 = newValue!;
                          });
                        },
                        items: <String>[
                          'Please Select Category   ',
                          'China                    ',
                          'Malaysia                 ',
                          'Pakistan                 ',
                          'SouthKorea               ',
                          'USA                      ',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ]),
                  SizedBox(
                    width: 17,
                  ),
                  Column(children: <Widget>[
                    Text(
                      "Restaurant Category",
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 15,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Container(
                      width: 141,
                      //height: 500,
                      //padding: EdgeInsets.symmetric(vertical: 30),
                      //color: Color(0xffD3D3D3),
                      child: DropdownButton<String>(
                        value: dropdownValue4,
                        icon: const Icon(Icons.arrow_drop_down),
                        iconSize: 20,
                        elevation: 55,
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 11),
                        underline: Container(
                          height: 4,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue4 = newValue!;
                          });
                        },
                        items: <String>[
                          'Select a Category        ',
                          'Mitasu                   ',
                          'Oiso                     ',
                          'AK Noodle                ',
                          'Uncle Don                ',
                          'Super Saigon             ',
                          'Namaste                  ',
                          'Brew House               ',
                          'Chicken Rice             ',
                          'Rock U                   ',
                          'Nandos                   ',
                          'Fei Fan                  ',
                          '4 Fingers                ',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ]),
                  SizedBox(
                    width: 17,
                  ),
                  Column(children: <Widget>[
                    Text(
                      "Type of Food",
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 15,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Container(
                      width: 143,
                      //height: 500,
                      //padding: EdgeInsets.symmetric(vertical: 30),
                      //color: Color(0xffD3D3D3),
                      child: DropdownButton<String>(
                        value: dropdownValue5,
                        icon: const Icon(Icons.arrow_drop_down),
                        iconSize: 20,
                        elevation: 55,
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 11),
                        underline: Container(
                          height: 4,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue5 = newValue!;
                          });
                        },
                        items: <String>[
                          'Select a Type of Food    ',
                          'BBQ Chicken Rice         ',
                          'Haineese Chicken Rice    ',
                          'BBQ Chicken              ',
                          'Steamed Chicken Rice     ',
                          'Coffee                   ',
                          'Gourmet                  ',
                          'Ice Lemon Tea            ',
                          'Water                    ',
                          'Soft Drink               ',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ]),
                ],
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 28.0,
                      // ignore: deprecated_member_use
                      child: GFButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpVendorPage4()),
                          );
                        },
                        color: GFColors.WARNING,
                        child: Text(
                          'ADD',
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
              SizedBox(
                height: 10,
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
