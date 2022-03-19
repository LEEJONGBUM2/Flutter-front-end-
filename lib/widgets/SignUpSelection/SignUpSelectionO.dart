import 'package:flutter/material.dart';
import 'package:iconnexz/SignUpPage/SignUpPageI.dart';
import 'package:iconnexz/SignUpPage/SignUpPageO.dart';

class SignUpSelectionO extends StatefulWidget {
  SignUpSelectionO({Key? key}) : super(key: key);

  @override
  _SignUpSelectionState createState() => _SignUpSelectionState();
}

class _SignUpSelectionState extends State<SignUpSelectionO> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int selectedValue = 1;

    return Container(
      padding: EdgeInsets.all(size.height > 0
          ? 0
          : size.height > 0
              ? 0
              : 0),
      child: Center(
        child: Card(
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.yellow[50],
                  width: 350,
                  height: 45,
                  child: RadioListTile(
                    value: 0,
                    groupValue: selectedValue,
                    title: Text('Individual'),
                    secondary: OutlineButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUpPage()),
                        );
                      },
                    ),
                    onChanged: (value) => setState(() => selectedValue = 0),
                  ),
                ),
                Container(
                  color: Colors.yellow[100],
                  width: 350,
                  height: 45,
                  child: RadioListTile(
                    value: 1,
                    groupValue: selectedValue,
                    title: Text('Organization'),
                    secondary: OutlineButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/SignupO');
                      },
                    ),
                    onChanged: (value) => setState(() => selectedValue = 1),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
