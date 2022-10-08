import 'package:flutter/material.dart';
import 'package:islami_app/models/radio.dart';
import 'package:islami_app/models/radio_api_manager.dart';

class RadioItem extends StatelessWidget {
  Radios radio;
  Function play,stop;
  RadioItem(this.radio,this.play,this.stop,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      //padding: EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Text(
             radio.name,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                  child: IconButton(
                icon: Icon(
                  Icons.play_arrow,
                  size: 40,
                ),
                onPressed: () async{
                 await play(radio.radio_url);
                 await RadioApiManager.getRadio();

                },
              )),
              InkWell(
                  child: IconButton(
                icon: Icon(
                  Icons.pause,
                  size: 50,
                ),
                onPressed: () {
                  stop();
                },
              )),
            ],
          ),
          Divider(
            thickness: 2,
          )
        ],
      ),
    );
  }
}
