import 'package:flutter/material.dart';

class SettingsLabel extends StatelessWidget {
  final String label;

  const SettingsLabel(this.label,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
     // alignment: Alignment.centerLeft,
      child: Text(label,style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold) ,),
    );
  }
}
