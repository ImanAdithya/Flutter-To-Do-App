import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
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
  const MyHomePage({super.key});

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
        child: Column(
          children: [
            searchBar(),
          ],
        ),
      ),
    );
  }

  Padding searchBar(){
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 18.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 22.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: TextField(
          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(0),
              prefixIcon: Icon(Icons.search,color: Colors.black.withOpacity(0.8),size: 22,),
              prefixIconConstraints: BoxConstraints(
                  maxHeight: 20,
                  maxWidth: 25
              ),
              border: InputBorder.none,
              hintText: 'Search'
          ),
        ),
      ),
    );
  }
}
