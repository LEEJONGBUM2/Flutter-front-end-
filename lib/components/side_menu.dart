// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class SideMenu extends StatelessWidget {
//   const SideMenu({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: ListView(
//         children: [
//           Container(
//               height: 55.0,
//               child: DrawerHeader(
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage("assets/images/Iconnexz.png"),
//                     fit: BoxFit.contain,
//                   ),
//                 ),
//                 child: null,
//               )),
//           const Divider(
//             height: 1,
//             thickness: 1,
//             indent: 0,
//             endIndent: 0,
//             color: Colors.white,
//           ),
//           DrawerListTile(
//             title: "Dashbord",
//             svgSrc: "assets/icons/menu_dashbord.svg",
//             press: () {
//               Navigator.pushNamed(context, '/Dashboard');
//             },
//           ),
//           DrawerListTile(
//             title: "Account",
//             svgSrc: "assets/icons/menu_profile.svg",
//             press: () {
//               Navigator.pushNamed(context, '/VendorAccount');
//             },
//           ),
//           DrawerListTile(
//             title: "Manage Service",
//             svgSrc: "assets/icons/menu_doc.svg",
//             press: () {
//               Navigator.pushNamed(context, '/ManageService');
//             },
//           ),
//           ExpansionTile(
//             title: Row(children: [
//               Icon(Icons.shopping_cart, color: Colors.white54, size: 20),
//               SizedBox(
//                 width: 16.5,
//               ),
//               Text("Orders", style: TextStyle(color: Colors.white54)),
//             ]),
//             collapsedIconColor: Colors.white54,
//             iconColor: Colors.white54,
//             children: <Widget>[
//               ListTile(
//                 title: Text(
//                   "Order List",
//                   style: TextStyle(color: Colors.white54),
//                 ),
//                 leading: Icon(Icons.list, color: Colors.white54, size: 20),
//                 onTap: () {
//                   Navigator.pushNamed(context, '/Orders');
//                 },
//               ),
//               ListTile(
//                 title: Text(
//                   "Order History",
//                   style: TextStyle(color: Colors.white54),
//                 ),
//                 leading: Icon(Icons.history, color: Colors.white54, size: 20),
//                 onTap: () {
//                   Navigator.pushNamed(context, '/OrderHistory');
//                 },
//               )
//             ],
//           ),
//           DrawerListTile(
//             title: "Wallet",
//             svgSrc: "assets/icons/menu_store.svg",
//             press: () {
//               Navigator.pushNamed(context, '/Wallet');
//             },
//           ),
//           DrawerListTile(
//             title: "Voucher",
//             svgSrc: "assets/icons/doc_file.svg",
//             press: () {
//               Navigator.pushNamed(context, '/Voucher');
//             },
//           ),
//           DrawerListTile(
//             title: "Reports",
//             svgSrc: "assets/icons/folder.svg",
//             press: () {
//               Navigator.pushNamed(context, '/Reports');
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }

// class DrawerListTile extends StatelessWidget {
//   const DrawerListTile({
//     Key? key,
//     // For selecting those three line once press "Command+D"
//     required this.title,
//     required this.svgSrc,
//     required this.press,
//   }) : super(key: key);

//   final String title, svgSrc;
//   final VoidCallback press;

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       onTap: press,
//       horizontalTitleGap: 0.0,
//       leading: SvgPicture.asset(
//         svgSrc,
//         color: Colors.white54,
//         height: 16,
//       ),
//       title: Text(
//         title,
//         style: TextStyle(color: Colors.white54),
//       ),
//     );
//   }
// }
