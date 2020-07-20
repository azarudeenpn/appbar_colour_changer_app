import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>{
  MaterialColor colour = Colors.blueGrey;
  var appBarTitle = "This Appbar colour will change";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Stateful Widget",
      home: Scaffold(
        appBar: AppBar(
          title: Text(appBarTitle),
          backgroundColor: colour, //todo: might try to change this colour
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text("This will change the appbar colour",textAlign: TextAlign.center,),
            RaisedButton(
                child: Text("Red"),
                color: Colors.red,
                onPressed: (){ setState(() {
                  colour = Colors.red;
                  appBarTitle = "Appbar colour changed to RED";
                });
                }),
            RaisedButton(
              child: Text("Purple"),
              color: Colors.purple,
              onPressed: (){setState(() {
                colour = Colors.purple;
                appBarTitle = "Appbar colour changed to PURPLE";
              });
              },
            ),
            RaisedButton(
              child: Text("Green"),
              color: Colors.green,
              onPressed: (){setState(() {
                colour = Colors.green;
                appBarTitle = "Appbar colour changed to GREEN";
              });
              },
            ),
            RaisedButton(
              child: Text("Reset"),
              color: Colors.blueGrey,
              onPressed: (){
                setState(() {
                  colour = Colors.blueGrey;
                  appBarTitle = "This Appbar colour will change";
                });
              },
            )
          ],
        ),
      ),
    );
  }
  
}