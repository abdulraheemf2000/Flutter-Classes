import 'package:flutter/material.dart';

class Homework extends StatefulWidget {
  const Homework({Key? key}) : super(key: key);

  @override
  State<Homework> createState() => _HomeworkState();
}

class _HomeworkState extends State<Homework> {
  bool? maleSelected;
  String getCurrentGender(){
    if(maleSelected==null){
      return 'NOTHING';
    } else if(maleSelected!){
      return 'MALE';
    } else {
      return 'FEMALE';
    }
  }

 Color getMaleColor(){
   if (maleSelected==null){
     return Colors.white;
   } else if (maleSelected!){
     return Colors.green;
   }else {
     return Colors.white;
   }
 }
  Color getFemaleColor(){
    if (maleSelected==null){
      return Colors.white;
    } else if (!maleSelected!){
      return Colors.green;
    }else {
      return Colors.white;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFe4e4e4),
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text('Choose your gender'),
      ),
      body:Column(
        children: [
          Spacer(),
          Text('CHOOSE YOUR GENDER BY CLICKING ONE OF THE BOXES BELOW',textAlign: TextAlign.center,),
          Spacer(),
          GestureDetector(
            onTap: (){
              setState(() {
                maleSelected = true;
              });
            },
            child: Container(
              height: 150,
              width: 300,
              decoration: BoxDecoration(
                color: getMaleColor(),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Center(child: Text('MALE')),
            ),
          ),
          Spacer(),
          GestureDetector(
            onTap: (){
              setState(() {
                maleSelected = false;
              });
            },
            child: Container(
              height: 150,
              width: 300,
              decoration: BoxDecoration(
                  color: getFemaleColor(),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Center(child: Text('FEMALE')),
            ),
          ),
          Spacer(),
          Text('You chose ${getCurrentGender()}'),
          Spacer(),
          ElevatedButton(onPressed:(){
            setState(() {
              maleSelected = null;
            });
          }, child: Text('RESET SELECTION'))
        ],
      ),
    );
  }
}
