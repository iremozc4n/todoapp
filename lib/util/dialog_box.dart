import 'package:flutter/material.dart';
import 'package:todo_app/util/my_button.dart';


class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300], 
      content: Container(
        height:120,
        child: Column(children: [
          //input almak için
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText:"Add a new task"
              ),
          ),
          SizedBox(height: 20), // TextField ile butonlar arasında boşluk ekler

          // buton save ve cancel
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, //yatayda ortalar
            children: [
              //save buttonnn
              MyButton(text: "Kaydet", onPressed: (){}),
              //iptal
                MyButton(text: "İptal", onPressed: (){}),

            ],
          )
           
        ],),
        ),
    );
    
  }
}