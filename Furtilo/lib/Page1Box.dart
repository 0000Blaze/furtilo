import 'package:flutter/material.dart';

class ABox extends StatelessWidget{
  final Function switcher;
  final double countNo;
  final Function home;
  final Function udPage;

  ABox(this.switcher,this.countNo,this.home,this.udPage);

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
                  margin:EdgeInsets.all(0.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.all(10.0),
                        child:RaisedButton(
                          child:Text('Repairs'),
                          onPressed: switcher,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(10.0),
                        child:RaisedButton(
                          child:Text('Cleaning'),
                          onPressed: udPage,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(10.0),
                        child:RaisedButton(
                          child:Text('Day long'),
                          onPressed: udPage,
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
                          child:Text('Studies'),
                          onPressed: udPage,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(10.0),
                        child:RaisedButton(
                          child:Text('Movers'),
                          onPressed: udPage,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(10.0),
                        child:RaisedButton(
                          child:Text('Beauty'),
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



