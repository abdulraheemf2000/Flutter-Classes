

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.red,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30
          )
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.brown,
            shape: StadiumBorder(),
          )
        ),
        scaffoldBackgroundColor: Color(0xFFe4e4e4),
        fontFamily: 'Sono'
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
      title: Text('HELLO WORLD!'),
     ),
     body: Column(
       crossAxisAlignment: CrossAxisAlignment.center,
       children: [
         Expanded(
           child: Container(
             height: 50,
             width: 500,
             color: Colors.green,
           ),
         ),
         Expanded(
           flex: 2,
           child: Container(
             height: 1,
               width: 500,
             color: Colors.purple,
           ),
         ),
       ],
     ),

   );
  }
}

// ASSIGNMENT
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});
//
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int numberRolled = 1;
//   final rand = Random();
//   Color getColor() {
//     switch(numberRolled){
//       case 1:
//         return Colors.blue;
//       case 2:
//         return Colors.yellow;
//       case 3:
//         return Colors.orange;
//       case 4:
//         return Colors.black;
//       case 5:
//         return Colors.purple;
//       default:
//         return Colors.green;
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Dice'),
//         centerTitle: true,
//         backgroundColor: getColor(),
//       ),
//       body: Center(
//         child: Container(
//           width: 250,
//           height: 250,
//           decoration: BoxDecoration(
//               color: getColor(),
//               borderRadius: BorderRadius.circular(10)
//           ),
//           child: UnconstrainedBox(
//             child: CircleAvatar(
//               radius: 40,
//               child: Text('1'),
//               backgroundColor: Colors.white,
//             ),
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: (){
//           setState((){
//             numberRolled = rand.nextInt(6)+1;
//           });
//         },
//         child: Text('SPIN'),
//       ),
//     );
//   }
// }
