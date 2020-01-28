import 'package:flutter/material.dart';

import './boxes.dart';

class Preview extends StatelessWidget{
  final Function forward;
  final Function backward;
  final Function udp;
  final Function home;
  final double number;
  
  Preview(this.forward,this.number,this.backward,this.udp,this.home);
  
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.red,
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blue,
          height: 75,
          minWidth: 140,
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(18.0),
          ),
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      
      home: Scaffold(
       appBar: AppBar(
        title: Text('Furtilo'),
        actions: <Widget>[
          IconButton(
              
              icon: const Icon(Icons.wb_sunny ),
              tooltip: 'Hello!',
              onPressed: udp,
              color: Colors.cyan,
           
           )
        ],
       ),
       
       body:Boxes(forward , number, backward, udp, home),
      ),
    );
  }
}