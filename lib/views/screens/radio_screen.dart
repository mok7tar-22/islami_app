import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/controllers/radio_controller.dart';
import 'package:islami_app/views/widgets/raido_item.dart';
import 'package:provider/provider.dart';

import '../../controllers/settings_controller.dart';
AudioPlayer audioPlayer=AudioPlayer();
class RadioScreen extends StatelessWidget {
  //late Radios radio;
  const RadioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:  (context) => RadioController(),
      builder:(context, child) => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(flex: 1, child: Image.asset("assets/images/radio_logo.png")),
          const SizedBox(
            height: 8,
          ),
          Expanded(
              flex: 3,
              child:FutureBuilder<List<dynamic>?>(
                future: Provider.of<RadioController>(context).getRadio(),
                builder: (context, snapshot){
                  if(snapshot.connectionState==ConnectionState.waiting){
                    return const Center(child: CircularProgressIndicator.adaptive());
                  }
                  else if(snapshot.data==null){
                    return const Center(child: Text("Error has occurred please try again later"),);
                  }
                  else{
                    return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        return RadioItem(snapshot.data![index],play,stop );
                      },);
                  }
                },
              ))
        ],
      ),
    );
  }
  void play(String url) async{
   await audioPlayer.stop();
   await audioPlayer.play(url);

  }
  void stop(){
    // AudioPlayer audioPlayer = AudioPlayer();
    audioPlayer.stop();
  }
}
