import 'package:flutter/material.dart';
void main(){
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return   MaterialApp(
      title: "My App",
      home: const HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
    );
  }
}
class HomePage  extends  StatefulWidget{
  const HomePage({super.key});

  @override
  createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

late AnimationController _iconAnimationController;
late Animation<double> _iconAnimation;
@override
void initState(){
  super.initState();
  _iconAnimationController = AnimationController(
    vsync: this,
    duration:const Duration(milliseconds: 500)
  );
  _iconAnimation = CurvedAnimation(parent: _iconAnimationController, curve: Curves.bounceInOut
  );
  _iconAnimation.addListener(()=> setState(() { 
  }));
  _iconAnimationController.forward();
}
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        leading: const IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null, 
          ),
        title: const Text("Home Page"),
        actions: const [
          IconButton(onPressed: null, icon: Icon(Icons.search),
          tooltip: null,),
        ],
      ),
      body: Stack(
        fit:StackFit.expand,
        children: <Widget>[
           const Image(
            image: AssetImage("assets/Tacobell.jpg"),
            fit: BoxFit.cover,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment:MainAxisAlignment.center,
              children: <Widget>[
                FlutterLogo(
                  size:_iconAnimation.value*100.0 ,
                  ),
                  Form(
                    child: Theme(data: ThemeData(
                      brightness: Brightness.dark,
                      primarySwatch: Colors.teal,
                       inputDecorationTheme: const InputDecorationTheme(
                        labelStyle: TextStyle(
                          color: Colors.teal,
                          fontSize: 20.0
                        )
                       )
                    ),
                  child: Container(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(children:<Widget>[
                    TextFormField( decoration:const InputDecoration(
                  labelText: "Enter Email", 
                  ),
                  keyboardType: TextInputType.emailAddress,
                  
                  ),
                  TextFormField( decoration:const InputDecoration(
                  labelText: "Enter Password", 
                  ),
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  ),
                  const Padding(padding: EdgeInsets.only(top: 40.0),),
                  MaterialButton(
                    height: 40.0,
                    minWidth: 60.0,
                    color: Colors.teal,
                    textColor: Colors.white,
                    onPressed: ()=>{},
                    splashColor: Colors.redAccent,
                    child: const Text("Login"),
                    ),
                  ],
                  ),
                  ),
                    ),
                  )
              ],
            )
        ],
      ),
    );
  }
}