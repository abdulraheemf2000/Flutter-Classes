import 'package:flutter/material.dart';

class ShowUserDetails extends StatelessWidget {
  String name;
  String number;
  ShowUserDetails({required this.name,this.number='+50'});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('My name is $name'),
        Text(number)
      ],
    );
  }
}
