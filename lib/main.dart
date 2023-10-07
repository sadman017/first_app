import 'package:flutter/material.dart';
void main(){
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return  const MaterialApp(
      title: "My App",
      home: HomePage(),
    );
  }
}
class HomePage  extends  StatefulWidget{
  const HomePage({super.key});

  @override
  createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {

  String myText ="Hello World";
  void _changeText(){
    setState((){
      if(myText.startsWith("H")){
        myText ="Welcome to my app";
      }
      else{
        myText  = "Hello World";
      }
    });
  }

  Widget bodyWidget(){
  return Container(
    padding: const EdgeInsets.all(8.0),
    child: Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(myText),
        ElevatedButton(
          onPressed: _changeText,
          child: const Text("Click"),
        )
      ],
    ),)
  );
}
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        title: const Text("Home Page"),
      ),
      body: bodyWidget()
    );
  }
}