import 'package:flutter/material.dart';

class BBox extends StatelessWidget{
  final Function switcher;
  final double countNo;
  final Function home;
  final Function udPage;
  
  BBox(this.switcher,this.countNo,this.home,this.udPage);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: <Widget>[
            Text('Select a Category:'
              ,style: TextStyle(fontSize: 22),
              ),
        Row(
        children: <Widget>[
        
        Container(
          padding: EdgeInsets.only(top: 80,left: 40),
          margin:EdgeInsets.all(00.0),
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.all(10.0),
                child:RaisedButton(
                  child:Text('Electrician'),
                  onPressed: udPage,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                child:RaisedButton(
                  child:Text('Plumber'),
                  onPressed: switcher,
                ),
              ),
            ],
          ),
        ),
        
        Container(
          padding: EdgeInsets.only(top: 80),
          margin:EdgeInsets.all(00.0),
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.all(10.0),
                child:RaisedButton(
                  child:Text('PC & mobile'),
                  onPressed: udPage,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                child:RaisedButton(
                  child:Text('Gas Stove'),
                  onPressed: udPage,
                 ),
                      ),
                    ],
                  ),  
                ),
              ],
            ),
          ],
        ),
      );
      
  }
}
