import 'package:flutter/material.dart';

class BoardHeader extends StatelessWidget {

  int player1Score;
  int player2Score;
  String player1Name;
  String player2Name;



  BoardHeader(this.player1Score, this.player2Score,this.player1Name,this.player2Name);

  @override
  Widget build(BuildContext context) {
    return Column(
children: [
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [

      Text('$player1Name (X)',
        style: TextStyle(
          fontSize: 28,color: Colors.pink,fontWeight: FontWeight.w500,
        ),
      ),

      Text('$player2Name (O)',style: TextStyle(
        fontSize: 28,color: Colors.pink,fontWeight: FontWeight.w500,
      ),),
    ],
  ),
SizedBox(height: 10,),
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [

      Text('Score : $player1Score',style: TextStyle(
        fontSize: 28,color: Colors.pink,fontWeight: FontWeight.w500,
      ),),

      Text('Score: $player2Score',style: TextStyle(
        fontSize: 28,color: Colors.pink,fontWeight: FontWeight.w500,
      ),),
    ],
  ),
],
    );
  }
}
