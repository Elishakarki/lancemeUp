// import 'dart:ui';

// import 'package:flutter/material.dart';

// class ProfilePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.white,
//         title: Text('Profile',style: TextStyle(color: Colors.black),),

//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: EdgeInsets.all(10.0),
//               child: Column(
//                 children: [
//                   CircleAvatar(
//                     radius: 30,
//                     backgroundImage: AssetImage('assets/harry.png'),
//                   ),
//                   SizedBox(height: 10),
//                   Text(
//                     'Jane Cooper',
//                     style: TextStyle(
//                       fontSize: 24,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(height: 8),
//                   Text(
//                     'janecopper@gmail.com',
//                     style: TextStyle(
//                       fontSize: 16,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Divider(),
//             ListTile(
//               leading: Icon(Icons.edit),
//               title: Text('Set Status'),
//               trailing: Icon(Icons.arrow_forward_ios),
//               onTap: () {},
//             ),
//             ListTile(
//               leading: Icon(Icons.account_circle),
//               title: Text('Account'),
//               trailing: Icon(Icons.arrow_forward_ios),
//               onTap: () {},
//             ),
//             ListTile(
//               leading: Icon(Icons.whatshot),
//               title: Text('Activity'),
//               trailing: Icon(Icons.arrow_forward_ios),
//               onTap: () {},
//             ),
//             ListTile(
//               leading: Icon(Icons.people),
//               title: Text('Connections'),
//               trailing: Icon(Icons.arrow_forward_ios),
//               onTap: () {},
//             ),
//             Divider(),
//             ListTile(
//               title: Text(
//                 'App Settings',
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             ListTile(
//               leading: Icon(Icons.notifications),
//               title: Text('Notifications'),
//               trailing: Icon(Icons.arrow_forward_ios),
//               onTap: () {},
//             ),
//             ListTile(
//               leading: Icon(Icons.color_lens),
//               title: Text('Appearance'),
//               trailing: Icon(Icons.arrow_forward_ios),
//               onTap: () {},
//               subtitle: Text('Light'),
//             ),
//             Divider(
//               color: Colors.grey,
//             ),
//             ListTile(
//               title: Text(
//                 'More',
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             ListTile(
//               leading: Icon(Icons.privacy_tip),
//               title: Text('Privacy Policy'),
//               trailing: Icon(Icons.arrow_forward),
//               onTap: () {},
//             ),
//             ListTile(
//               leading: Icon(Icons.article),
//               title: Text('Terms & Conditions'),
//               trailing: Icon(Icons.arrow_forward),
//               onTap: () {},
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage("assets/harry.png")),
                SizedBox(height: 16.0),
                Text(
                  'Jane Cooper',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'janecopper@gmail.com',
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text('Set Status'),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Account'),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Icon(Icons.list_alt),
            title: Text('Activity'),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text('Connections'),
            trailing: Icon(Icons.arrow_forward),
          ),
          SizedBox(height: 8.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'App Settings',
                  style: TextStyle(fontSize: 18.0),
                ),
                ListTile(
                  title: Text('Notifications'),
                  trailing: Icon(Icons.arrow_forward),
                ),
                ListTile(
                  title: Text('Appearance'),
                  trailing: Icon(Icons.arrow_forward),
                  subtitle: Text('Light'),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'More',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  ListTile(
                    leading: Icon(Icons.privacy_tip),
                    title: Text('Privacy Policy'),
                  ),
                  ListTile(
                    leading: Icon(Icons.description),
                    title: Text('Terms & Conditions'),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                  ListTile(
                    leading: Icon(Icons.help),
                    title: Text('Help & Support'),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                  ListTile(
                    leading: Icon(Icons.question_answer),
                    title: Text('FAQs'),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 8.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Account',
                style: TextStyle(fontSize: 24.0),
              ),
              
              SizedBox(height: 8.0),
             
            ]),
          ),
        ]),
      ),
    );
  }
}

//  GestureDetector(onTap: () {
//               showModalBottomSheet(
//                   context: context,
//                   builder: (BuildContext context) {
//                     return Expanded(
//                       child: Container(
//                         height: 200,
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.all(16.0),
//                               child: Text(
//                                 "Are you sure?",
//                                 style: TextStyle(
//                                   fontSize: 24,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ),
//                             Padding(
//                               padding:
//                                   const EdgeInsets.symmetric(horizontal: 16.0),
//                               child: Text(
//                                 "Are you you want to logout from the Workspace?",
//                                 style: TextStyle(
//                                   fontSize: 16,
//                                 ),
//                               ),
//                             ),
//                             SizedBox(height: 16),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceAround,
//                               children: [
//                                 ElevatedButton(
//                                   onPressed: () {
//                                     // perform logout operation
//                                     Navigator.of(context).pop();
//                                   },
//                                   child: Text(
//                                     "Logout",
//                                     style: TextStyle(
//                                       fontSize: 20,
//                                       color: Colors.white,
//                                     ),
//                                   ),
//                                   style: ElevatedButton.styleFrom(
//                                     primary: Colors.red,
//                                     padding: EdgeInsets.symmetric(
//                                       horizontal: 40.0,
//                                       vertical: 16.0,
//                                     ),
//                                     shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(30),
//                                     ),
//                                   ),
//                                 ),
//                                 TextButton(
//                                   onPressed: () {
//                                     Navigator.of(context).pop();
//                                   },
//                                   child: Text(
//                                     "Cancel",
//                                     style: TextStyle(
//                                       fontSize: 20,
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     );
//                   });
//             }),