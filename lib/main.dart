import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red.shade200,
        appBar: AppBar(
          title: Center(child: Text('Dice'),),
          backgroundColor: Colors.red.shade300,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  const DicePage({Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}
int n1;
int n2;
void changeDiceface()
{
  n1=Random().nextInt(6)+1;
  n2=Random().nextInt(6)+1;


}
class _DicePageState extends State<DicePage> {
  int n1=1;
  int n2=2;
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(

              child: Image.asset('images/dice$n1.png'),

              onPressed: (){
                setState(() {
                  changeDiceface();
                });
              },
            ),
          ) ,
          Expanded(child: FlatButton(child: Image.asset('images/dice$n2.png'),
            onPressed: (){
              setState(() {
                changeDiceface();
              });
            },),),

        ],
      ),
    );
  }
}

