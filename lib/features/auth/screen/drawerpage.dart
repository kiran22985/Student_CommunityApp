// import 'package:flutter/material.dart';
// import 'package:mistri/provider/user_provider.dart';

// import 'package:provider/provider.dart';

// class Mydrawer extends StatelessWidget {
//   const Mydrawer({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final user = Provider.of<UserProvider>(context).user;
//     return Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//              UserAccountsDrawerHeader(
//               accountName: Text(
//                 user.fullName,
//                 style: const TextStyle(
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               accountEmail: Text(
//                 user.email,
//                 style: const TextStyle(
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               currentAccountPicture: CircleAvatar(),
//             ),
//             ListTile(
//               leading: const Icon(Icons.description),
//               title: const Text('About Mistri'),
//               onTap: () {},
//             ),
//             ListTile(
//               leading: const Icon(Icons.people),
//               title: const Text('Register as Proffesional'),
//               onTap: () {},
//             ),
//             ListTile(
//               leading: const Icon(Icons.share),
//               title: const Text('Share Mistri'),
//               onTap: () {},
//             ),
//             ListTile(
//               leading: const Icon(Icons.rate_review),
//               title: const Text('Rate Us'),
//               onTap: () {},
//             ),
//             ListTile(
//               leading: const Icon(Icons.calendar_view_month),
//               title: const Text('Sheduled Booking'),
//               onTap: () {},
//             ),
//             ListTile(
//               leading: const Icon(Icons.settings),
//               title: const Text('Settings'),
//               onTap: () {},
//             ),
//             ListTile(
//               leading: const Icon(
//                 Icons.logout,
//               ),
//               title: const Text('Logout'),
//               onTap: () {},
//             ),
//           ],
//         ),
//       );
//   }
// }