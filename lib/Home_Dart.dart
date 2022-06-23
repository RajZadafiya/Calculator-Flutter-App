import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var num1=0,num2=0,result = 0;

  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");

  void Add(){
    setState((){
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      result = num1 + num2;
    });
  }

  void Subtract(){
    setState((){
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      result = num1 - num2;
    });
  }

  void Multiply(){
    setState((){
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      result = num1 * num2;
    });
  }

  void Division(){
    setState((){
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      result = num1 ~/ num2;
    });
  }

  void Clear(){
    setState((){
      num1 = 0;
      num2 = 0;
      t1.text = "0";
      t2.text = "0";
      new ThemeData(
          brightness: Brightness.dark);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculater"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(40.0),
        child: new Column(
          mainAxisAlignment:MainAxisAlignment.center
          ,children : <Widget>[
          new Text("Output : $result",style: new TextStyle(
              fontSize: 20.0,
              color: Colors.blue,
              fontWeight: FontWeight.bold
          ),),
          new TextField(keyboardType: TextInputType.number,
          controller: t1,
          decoration: new InputDecoration(
            hintText: "Enter Number 1"
          ),),
          new TextField(keyboardType: TextInputType.number,
            controller: t2,
            decoration: new InputDecoration(
                hintText: "Enter Number 2"
            ),),
          new Padding(padding: const EdgeInsets.only(top: 20.0)),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new RaisedButton(
                  child:new Text("Addition"),
                  color: Colors.grey,
                  onPressed: Add),
              new Padding(padding: const EdgeInsets.only(top: 20.0)),
              new RaisedButton(
                  color: Colors.grey,
                  child:new Text("Subtract"),
                  onPressed: Subtract),
            ],
          ),
          new Padding(padding: const EdgeInsets.only(top: 20.0)),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new RaisedButton(
                  child:new Text("Multiply"),
                  color: Colors.grey,
                  onPressed: Multiply),
              new Padding(padding: const EdgeInsets.only(top: 20.0)),
              new RaisedButton(
                  child:new Text("Division"),
                  color: Colors.grey,
                  onPressed:Division),
            ],
          ),
          new Padding(padding: const EdgeInsets.only(top: 20.0)),
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[ new MaterialButton(
                child:new Text("Clear"),
                color: Colors.blueAccent,
                onPressed: Clear),
          ],)
        ],),
      ),
    );
  }
}
