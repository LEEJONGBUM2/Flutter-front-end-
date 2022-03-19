import 'package:flutter/material.dart';
import 'package:iconnexz/LandingPage/LandingPage.dart';
import 'package:iconnexz/LogInPage/LogInPage.dart';
import 'package:iconnexz/widgets/Navbar/navbar_logo.dart';
import 'NavBarItem.dart';

class NavbarDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff042E44),
      height: 90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavBarLogo(
            press: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              NavbarItem(
                title: "Home",
                press: () {
                  Navigator.pushNamed(context, '/');
                },
              ),
               NavbarItem(
                title: "Contact Us",
                press: () {
                  Navigator.pushNamed(context, '/Contact');
                },
              ),
              NavbarItem(
                title: "Suggest A Vendor",
                press: () {
                  Navigator.pushNamed(context, '/Suggest');
                },
              ),
              NavbarItem(
                title: "FAQ",
                press: () {
                  Navigator.pushNamed(context, '/FAQ');
                },
              ),
              NavbarItem(
                title: "Become A Vendor",
                press: () {
                  Navigator.pushNamed(context, '/BecomeAVendor');
                },
              ),
              NavbarItem(
                title: "Login",
                press: () {
                  Navigator.pushNamed(context, '/Login');
                },
              ),
              NavbarItem(
                title: "Sign Up",
                press: () {
                  Navigator.pushNamed(context, '/Signup');
                },
              ),
              SizedBox(
                width: 30,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
