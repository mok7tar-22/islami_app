import 'package:flutter/material.dart';

class SettingsOption extends StatelessWidget {
  final String opt1, opt2;
  final dynamic value1, value2;
  final dynamic selectedValue;
  final Function onChanged;

 const SettingsOption({Key? key, required this.opt1,required this.opt2,required this.value1,required this.value2,
     required this.selectedValue,required this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
         color: Colors.white,
        border: Border.all(
          color: Theme.of(context).primaryColor,
        ),
      ),

      child: DropdownButton(
        underline: SizedBox(),
       value:selectedValue ,
        isExpanded: true,
        onChanged: (value){
     onChanged(value);
        },
        items: [
          DropdownMenuItem(
            child: Text(
              opt1,
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
            value: value1,
          ),
          DropdownMenuItem(

              child: Text(
                opt2,
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
              value: value2),

        ],
      ),
    );
  }
}
