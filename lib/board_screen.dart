
import 'package:flutter/material.dart';
import 'package:tac_tic_toe_project/board_button.dart';
import 'package:tac_tic_toe_project/board_header.dart';

class BoardScreen extends StatefulWidget {
  static const String routeName = 'board';

  @override
  State<BoardScreen> createState() => _BoardScreenState();
}


class _BoardScreenState extends State<BoardScreen> {
  List<String> boardStatus = [
    '', '', '',
    '', '', '',
    '', '', '',

  ];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as BoardScreenArgs;


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: (Text('Game',
          style: TextStyle(fontSize: 24),

       )),
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: BoardHeader(Player1Score, Player2Score,args.player1Name,args.player2Name),
          ),
          SizedBox(height: 20,),
           Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,

                  children: [
                    BoardButton(boardStatus[0], onBtnClick, 0),
                    BoardButton(boardStatus[1], onBtnClick, 1),
                    BoardButton(boardStatus[2], onBtnClick, 2),
                  ],
                ),
              ),


          Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  BoardButton(boardStatus[3], onBtnClick, 3),
                  BoardButton(boardStatus[4], onBtnClick, 4),
                  BoardButton(boardStatus[5], onBtnClick, 5),
                ],
              ),
            ),

          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BoardButton(boardStatus[6], onBtnClick, 6),
                BoardButton(boardStatus[7], onBtnClick, 7),
                BoardButton(boardStatus[8], onBtnClick, 8),
              ],
            ),
          ),
        ],
      ),
    );
  }

  int counter = 0;
  int Player1Score = 0;
  int Player2Score = 0;

  void onBtnClick(int index) {
    if (boardStatus[index].isNotEmpty) {
      return;
    }

    if (counter % 2 == 0) {
      boardStatus[index] = 'X';
      //Player1Score++;
    } else {
      boardStatus[index] = 'O';
      //Player2Score++;
    }
    counter++;
    setState(() {});
    if (checkWinner('X')) {
      Player1Score += 1;
      resetBoard();
    } else if (checkWinner('O')) {
      Player2Score += 1;
      resetBoard();
    }else if(counter==9){
resetBoard();
    }
  }

  void resetBoard(){
    boardStatus=['','','',
      '','','',
      '','','',
    ];
    counter=0;
    setState((){});

  }
  bool checkWinner(String playerSymbol) {
    for (int i = 0; i < 9; i += 3) {
      if (boardStatus[i] == playerSymbol &&
          boardStatus[i + 1] == playerSymbol &&
          boardStatus[i + 2] == playerSymbol) {
        return true;
      }

      for (int i = 0; i < 3; i++) {
        if (boardStatus[i] == playerSymbol &&
            boardStatus[i + 3] == playerSymbol &&
            boardStatus[i + 6] == playerSymbol) {
          return true;
        }

        if (boardStatus[0] == playerSymbol &&
            boardStatus[4] == playerSymbol &&
            boardStatus[8] == playerSymbol) {
          return true;
        }
      }
        if (boardStatus[2] == playerSymbol &&
            boardStatus[4] == playerSymbol &&
            boardStatus[6] == playerSymbol) {
          return true;
        }
      }
        return false;
      }
    }

    class BoardScreenArgs{
  String player1Name;
  String player2Name;

  BoardScreenArgs({required this.player1Name, required this.player2Name});
}
