import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter/material.dart';
import 'package:tac_tic_toe_project/ads_helper.dart';
import 'package:tac_tic_toe_project/board_screen.dart';



class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String Player1Name = '';

  String Player2Name = '';



  @override
  void initState() {
    super.initState();

  }




  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
          title: Text('Login Screen'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextField(
                onChanged: (text) {
                  Player1Name = text;
                },
                decoration: InputDecoration(
                    labelText: 'Player 1'
                ),),
              TextField(
                onChanged: (text) {
                  Player2Name = text;
                },
                decoration: InputDecoration(
                    labelText: 'Player 2'
                ),),

              ElevatedButton(onPressed: () {
                var args = BoardScreenArgs(
                    player1Name: Player1Name, player2Name: Player2Name);
                Navigator.pushNamed(context, BoardScreen.routeName,
                    arguments: args);
              }, child: Text('Play!'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.pinkAccent,
                ),),
              Spacer(),

              AdmobBanner(
                adUnitId: AdHelper.bannerAdUnitId,
                adSize: AdmobBannerSize.SMART_BANNER(context),)

            ],
          ),
        ),


      );
  }
  @override
  void dispose(){
    super.dispose();
  }

}
