import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  MyButton({
    super.key,
    required this.text,
    required this.onPressed,
    

    });

  @override
  Widget build(BuildContext context) {
    return Container(
      width:80.0,
      height: 40.0,
child:MaterialButton(

      onPressed: onPressed,
      color: const Color.fromARGB(255, 255, 112, 64), // kaydet iptal butonunun rengi
      child: Text(text), 

    ) 
    );
    
     
  }
}