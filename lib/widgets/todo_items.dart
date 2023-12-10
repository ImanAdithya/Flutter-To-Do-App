import 'package:flutter/material.dart';
import 'package:todo_app/model/Todo.dart';

class ToDOItems extends StatelessWidget {
  final ToDo toDo;
  final onToDoChanged;
  final onDeleteItem;

   ToDOItems({
     Key? key,
     required this.toDo,
     required this.onDeleteItem,
     required this.onToDoChanged
   });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: ListTile(
        onTap: (){
         onToDoChanged(toDo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        tileColor: Colors.white,
        leading: Icon(
          toDo.isDone?Icons.check_box:Icons.check_box_outline_blank,
          color: Colors.deepPurple,
        ),
        title: Text(
         toDo.todoText!,
          style: TextStyle(
            fontSize: 16,
            decoration: toDo.isDone? TextDecoration.lineThrough:null,
          ),
        ),
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 10),
          width: 35,
          height: 35,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            color: Colors.white,
            iconSize: 20,
            icon: Icon(Icons.delete),
            onPressed: (){
             onDeleteItem(toDo.id);
            },
          ),
        ),
      ),
    );
  }
}
