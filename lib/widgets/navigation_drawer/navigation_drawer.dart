import 'package:flutter/material.dart';
import 'package:iconnexz/widgets/navigation_drawer/drawer_item.dart';
import 'package:iconnexz/widgets/navigation_drawer/drawer_item2.dart';
import 'package:iconnexz/widgets/navigation_drawer/drawer_item3.dart';
import 'package:iconnexz/widgets/navigation_drawer/drawer_item4.dart';
import 'package:iconnexz/widgets/navigation_drawer/drawer_item5.dart';
import 'package:iconnexz/widgets/navigation_drawer/drawer_item6.dart';

import 'drawer_item7.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Color(0xff042E44),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 16),
        ],
      ),
      child: Column(
        children: <Widget>[
          DrawerItem('Home', Icons.home),
          DrawerItem7('Contact us', Icons.contact_page),
          DrawerItem2('Suggest A Vendor', Icons.people),
          DrawerItem3('FAQ', Icons.help),
          DrawerItem4('Become A Vendor', Icons.sell),
          DrawerItem5('Login', Icons.login),
          DrawerItem6('Sign Up', Icons.library_add),
        ],
      ),
    );
  }
}
