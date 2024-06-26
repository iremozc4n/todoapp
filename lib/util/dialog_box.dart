import 'package:flutter/material.dart';
import 'package:todo_app/util/my_button.dart';


class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
VoidCallback onCancel;

  DialogBox({
    super.key, 
    required this.controller,
    required this.onSave,
    required this.onCancel,
    
    
    
    });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300], 
      content: Container(
        height:120,
        child: Column(children: [
          //input almak için
          TextField(
            controller: controller,
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
              MyButton(text: "Kaydet", onPressed: onSave),
              //iptal
                MyButton(text: "İptal", onPressed: onCancel),

            ],
          )
           
        ],),
        ),
    );
    
  }
}