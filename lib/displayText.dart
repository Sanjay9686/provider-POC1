import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DisplayText extends StatelessWidget {

  ValueNotifier<String> text1=ValueNotifier("sanjay");
 final textController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body:ValueListenableBuilder(valueListenable: text1, builder: (context,String value,_){
         return  Column(
         children: <Widget>[
           Container(
         padding: EdgeInsets.only(top:50),
         child: TextField(
           controller: textController,
           decoration: InputDecoration(
             hintText:"type message"
           ),
        onChanged: (v){
           value=v;
        },
         ),
       ),
      //  RaisedButton(
      //    child: Text("add"),
      //    onPressed:(){
      //     //  final int text2=int.parse(textController.text);
      //      value=text;
      //    }),

         SizedBox(height:30),
         Text("$value")

      
         ],
       );
       })
    );
  }
}