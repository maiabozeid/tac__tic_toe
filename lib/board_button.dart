import 'package:flutter/material.dart';

class BoardButton extends StatelessWidget {

  String text;
  Function onBtnClickCall;
  int index;

  BoardButton(this.text,this.onBtnClickCall,this.index);

  @override
  Widget build(BuildContext context) {
    return
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(2.0),

                child: ElevatedButton(

                  onPressed: (){
    //change text in board status
    onBtnClickCall(index);

          }, child: Text(text,
          style: TextStyle(
                fontSize:45 , color: Colors.white ,
          ),
                ),
style: ElevatedButton.styleFrom(
  primary: Colors.pinkAccent,
),
                ),

              ),
          );


  }
}
