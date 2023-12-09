import 'package:flutter/material.dart';

class ToDOItems extends StatelessWidget {
  const ToDOItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        onTap: (){},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        tileColor: Colors.white,
        leading: Icon(Icons.check_box,color: Colors.deepPurple,),
        title: Text(
          "Check Main",
          style: TextStyle(
            fontSize: 16,
            decoration: TextDecoration.lineThrough
          ),
        ),
        trailing: Container(
          width: 35,
          height: 35,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Icon(Icons.delete,color: Colors.white,),
        ),
      ),
    );
  }
}
