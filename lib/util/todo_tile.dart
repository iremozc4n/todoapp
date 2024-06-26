import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;

   ToDoTile({
    super.key, 
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.all(24),
      child: Container(
        padding: EdgeInsets.all(24),
        child: Row(
        children: [

          //checkbox
          Checkbox(
            value: taskCompleted, 
            onChanged: onChanged,
            activeColor: Colors.black,
            ),


          //görev adı
         Text(
          taskName,
          style: TextStyle(
            decoration:taskCompleted 
            ? TextDecoration.lineThrough 
            : TextDecoration.none,))
      ],
      )

 ,decoration: BoxDecoration(
        color: const Color.fromARGB(255, 85, 184, 234),
        borderRadius: BorderRadius.circular(12),
          )
        ),
    );
  }
}