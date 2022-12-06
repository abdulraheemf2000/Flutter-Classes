import 'package:flutter/material.dart';
import 'package:lesson_4/previous_homework.dart';
import 'package:lesson_4/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WIDGETS'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Text('THIS IS A DRAWER'),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('HELLO THIS IS A TEXT I LIKE WATCHING FOOTBALL, WORLD CUP',textAlign: TextAlign.center,style: TextStyle(
                fontSize: 20,
               //fontWeight: FontWeight.bold
              ),),
              ElevatedButton(onPressed:(){
                  print('Hello world');
              }, child: Text('ELEVATED BUTTON'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),),
              IconButton(onPressed: (){
                print('Icon Pressed');
              }, icon: Icon(Icons.home)),
              Stack(
                children: [
                  Container(
                    height: 100,
                    width: 350,
                    color: Colors.red,
                  ),
                  Text('HELLO'),
                ],
              ),
              ElevatedButton(onPressed:(){
                showDialog(context: context, builder: (BuildContext context){
                  return AlertDialog(
                    title: Text('PLEASE LOG IN'),
                    actions: [
                      TextButton(onPressed: (){}, child: Text('LOGIN')),
                      TextButton(onPressed: (){Navigator.pop(context);}, child: Text('CANCEL'))
                    ],
                  );
                });
              }, child: Text('SHOW ALERT DIALOG')),
              ElevatedButton(onPressed:(){
                showDialog(context: context, builder: (BuildContext context){
                  return Center(
                    child: Container(
                      height: 150,
                      width: 300,
                      color: Colors.blue,
                    ),
                  );
                });
              }, child: Text('SHOW CUSTOM ALERT DIALOG')),
              Icon(Icons.add,size: 50,color: Colors.green,),
              Image.asset('images/spiderman.png'),
              Image.network('https://upload.wikimedia.org/wikipedia/commons/9/90/Spiderman.JPG'),
              ElevatedButton(onPressed:(){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('THIS IS SNACKBAR')));
              }, child: Text('SHOW SNACKBAR')),
              ShowUserDetails(name: 'Henry'),
              ShowUserDetails(name: 'Adam',number: '+90',),
              ShowUserDetails(name: 'Joseph'),
              ShowUserDetails(name: 'Trevor'),
              ShowUserDetails(name: 'Micheal'),
            ],
          ),
        ),
      ),
    );
  }
}

//Checkbox
//RadioButton