import 'package:flutter/material.dart';
void main(){
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      title: "My App",
      home: HomePage(),
    );
  }
}
class HomePage  extends  StatefulWidget{
  @override
  _HomePageState  createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        title: const Text("Home Page"),
      ),
      body: const Center(child: Text("Hello Stateful Widget"),),
    );
  }
}