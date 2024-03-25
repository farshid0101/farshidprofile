import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('images/profile.png'),
              radius: 60.0,
            ),
            Text(
              'Saber Oyghan',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Pacifico',
                fontSize: 40.0,
                color: Colors.white,
              ),
            ),
            Text(
              'PROJECT MANAGER',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'SourceSans3',
                  fontSize: 20.0,
                  color: Colors.white70),
            ),
            SizedBox(
              width: 300.0,
              child: Divider(
                color: Colors.white,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                title: Text(
                  '+93 764 29 21 29',
                  style: TextStyle(
                    fontFamily: 'SourceSans3',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ListTile(
                leading: Icon(
                  Icons.mail,
                  color: Colors.teal,
                ),
                title: Text(
                  'saber.oyghan@yahoo.com',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontFamily: 'SourceSans3'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.teal,
//         body: SafeArea(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               CircleAvatar(
//                 radius: 100,
//                 backgroundImage: AssetImage('images/profile.png'),
//               ),
//               Text(
//                 'Saber Oyghan',
//                 style: TextStyle(
//                     fontSize: 40,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                     fontFamily: 'Pacifico'),
//               ),
//               Text(
//                 'PROJECT MANAGER',
//                 style: TextStyle(
//                     fontSize: 20,
//                     color: Colors.white,
//                     fontFamily: 'SourceSans3',
//                     letterSpacing: 2.5,
//                     fontWeight: FontWeight.bold),
//               ),
//               SizedBox(
//                 width: 300,
//                 height: 20,
//                 child: Divider(
//                   color: Colors.white24,
//                 ),
//               ),
//               Card(
//                 color: Colors.white,
//                 margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
//                 child: ListTile(
//                   leading: Icon(Icons.phone, color: Colors.teal),
//                   title: Text(
//                     '+93 764 29 21 20',
//                     style: TextStyle(
//                         color: Colors.black54, fontWeight: FontWeight.bold),
//                   ),
//                 ),
//               ),
//               Card(
//                 color: Colors.white,
//                 margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
//                 child: ListTile(
//                   leading: Icon(Icons.mail, color: Colors.teal),
//                   title: Text(
//                     'saber.oyghan@yahoo.com',
//                     style: TextStyle(
//                         color: Colors.black54, fontWeight: FontWeight.bold),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
