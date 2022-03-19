// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class SideMenuMobile extends StatelessWidget {
//   const SideMenuMobile({
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
//             svgSrc: "assets/icons/menu_dashbord.svg",
//             press: () {
//               Navigator.pushNamed(context, '/Dashboard');
//             },
//           ),
//           DrawerListTile(
//             svgSrc: "assets/icons/menu_profile.svg",
//             press: () {
//               Navigator.pushNamed(context, '/VendorAccount');
//             },
//           ),
//           DrawerListTile(
//             svgSrc: "assets/icons/menu_doc.svg",
//             press: () {
//               Navigator.pushNamed(context, '/ManageService');
//             },
//           ),
//           ExpansionTile(
//             title: Icon(Icons.shopping_cart, color: Colors.white54, size: 20),
//             trailing: SizedBox.shrink(),
//             children: <Widget>[
//               ListTile(
//                 leading: Icon(Icons.list, color: Colors.white54, size: 20),
//                 onTap: () {
//                   Navigator.pushNamed(context, '/Orders');
//                 },
//               ),
//               ListTile(
//                 leading: Icon(Icons.history, color: Colors.white54, size: 20),
//                 onTap: () {
//                   Navigator.pushNamed(context, '/OrderHistory');
//                 },
//               )
//             ],
//           ),
//           DrawerListTile(
//             svgSrc: "assets/icons/menu_store.svg",
//             press: () {
//               Navigator.pushNamed(context, '/Wallet');
//             },
//           ),
//           DrawerListTile(
//             svgSrc: "assets/icons/doc_file.svg",
//             press: () {
//               Navigator.pushNamed(context, '/Voucher');
//             },
//           ),
//           DrawerListTile(
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

//     required this.svgSrc,
//     required this.press,
//   }) : super(key: key);

//   final String svgSrc;
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
//     );
//   }
// }
