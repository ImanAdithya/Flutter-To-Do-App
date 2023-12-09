import 'package:flutter/material.dart';
import 'package:todo_app/model/Todo.dart';

class ToDOItems extends StatelessWidget {
  final ToDo toDo;

   ToDOItems({Key? key,required this.toDo});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: ListTile(
        onTap: (){
          print("CLICKED");
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        tileColor: Colors.white,
        leading: Icon(Icons.check_box,color: Colors.deepPurple,),
        title: Text(
         toDo.todoText!,
          style: TextStyle(
            fontSize: 16,
            decoration: TextDecoration.lineThrough
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
              print("CLICKED ON DELTE ICON");
            },
          ),
        ),
      ),
    );
  }
}
