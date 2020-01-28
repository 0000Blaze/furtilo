import 'package:flutter/material.dart';

class Plumber extends StatelessWidget{
  final Function up;
  final Function down;
  final double count;
  final Function udPage;

  Plumber(this.up, this.count, this.down,this.udPage);
  
  @override
  Widget build(BuildContext context) {
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[

      Container(width: double.infinity,
      child:Text('Available Plumbers',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20),
        ),
      ),
      
      Container(
        margin: EdgeInsets.all(12),
      ),
      
      Container(width: double.infinity,
      child:Column(children: <Widget>[
        
        Container(width: double.infinity,
         child: Text('   Plumber 1',textAlign: TextAlign.left,
          style: TextStyle(fontSize: 18),
         ),),
         
         Container(
          padding: EdgeInsets.all(10),
          height: 160,
          width: 160,
          decoration: BoxDecoration(
            border: Border.all(),
          ),
          child:Text(' \n \n \n Plumber\'s image',),
          
         ),
         
         Container(width: double.infinity,
         child:Text('Credits : 100',style: TextStyle(fontSize: 18),),
         margin: EdgeInsets.all(20.0),
         //color: Colors.lightBlue,
         decoration: BoxDecoration(
           border: Border.all()),
         )
      ],),),
      
      Container(
        padding: EdgeInsets.all(15),
        child:RaisedButton(child: Text('Select'),
        onPressed: up,))
    ],
    );
  }
}