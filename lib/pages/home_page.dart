import 'package:flutter/material.dart';
import 'package:todo_app/util/dialog_box.dart';
import 'package:todo_app/util/todo_tile.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

// list of tasks

List toDoList = [
  ["Make Tutorial",false],
  ["Do Exercise",false],
  
];

void checkBoxChanged(bool value, int index) {
  setState(() {
    toDoList[index][1] = !toDoList[index][1];
  });

}

//create new task
void createNewTask() {
  showDialog(
    context: context,
   builder: (context) {
    return DialogBox();
   }
   );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text('To Do'),
        elevation: 0,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        backgroundColor: Colors.blueAccent, // yeni görev ekleme butonunun rengi
        foregroundColor: Colors.white, // ikonun rengi
        child: Icon(Icons.add),
         ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: toDoList[index][0],
            taskCompleted:toDoList[index][1],
            onChanged: (value) => checkBoxChanged(value!, index), 
          );
        }
        
      ),
    );
  }
}
 