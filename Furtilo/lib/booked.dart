import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './imagebanner.dart';

class Booked extends StatelessWidget{

  final Function _home;

  Booked(this._home);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          
      Container(
        margin: EdgeInsets.all(30),
        child:
       Text('Booked Successfully!',
       style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20)),
      ),
      Container(
        margin: EdgeInsets.all(30),
        child:
       Text('Thanks for using our services!',
              style: TextStyle(fontStyle: FontStyle.italic,fontSize: 18),
              ),
      ),

      ImageBanner('assets/images/logo.png'),
      
      Container(
        margin: EdgeInsets.all(30),
        child:RaisedButton(
        child: Text('Home'),
      onPressed: _home,)
      ),
    ],),);
  }
}