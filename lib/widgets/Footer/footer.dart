import 'package:flutter/material.dart';
import 'package:iconnexz/widgets/Footer/google_logo.dart';
import 'package:iconnexz/widgets/Footer/twitter_logo.dart';

import 'facebook_logo.dart';
import 'copyright_logo.dart';
import 'linkOne_logo.dart';
import 'linkTwo_logo.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 70.0,
        color: const Color(0xff052F44),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            CopyRightLogo(
              press: () {},
            ),
            SizedBox(
              width: 20,
            ),
            LinkOneLogo(
              press: () {},
            ),
            SizedBox(
              width: 30,
            ),
            LinkTwoLogo(
              press: () {},
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  FacebookLogo(
                    press: () {},
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  TwitterLogo(
                    press: () {},
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  GoogleLogo(
                    press: () {},
                  ),
                ],
              ),
            )
          ],
        ));
  }
}

class FooterItem extends StatelessWidget {
  final String title;
  const FooterItem(
    this.title, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(color: Colors.white, fontSize: 12),
    );
  }
}
