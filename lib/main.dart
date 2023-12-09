import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_app/model/Todo.dart';
import 'package:todo_app/widgets/todo_items.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TO DO APP',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  final todosList=ToDo.todoList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEFF5),
      appBar: AppBar(
        backgroundColor: Color(0xFFEEEFF5),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.menu,
              color: Colors.black,
              size: 30,
            ),
            Container(
              height: 40.0,
              width: 40.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset("assets/avatar.jpg"),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 25,horizontal: 15),
        child: Column(
          children: [
            //Search Bar
            searchBar(),

            //list
            Expanded(
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 50,bottom:20,left: 10),
                    child: Text(
                      "ALL TODO",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 29.0
                      ),
                    ),
                  ),

                 for(ToDo todo in todosList)
                   ToDOItems(toDo: todo),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container searchBar() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 22.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0),
            prefixIcon: Icon(
              Icons.search,
              color: Colors.black.withOpacity(0.8),
              size: 22,
            ),
            prefixIconConstraints: BoxConstraints(maxHeight: 20, maxWidth: 25),
            border: InputBorder.none,
            hintText: 'Search'),
      ),
    );
  }
}
