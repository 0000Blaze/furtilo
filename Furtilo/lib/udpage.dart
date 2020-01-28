import 'package:flutter/material.dart';

import './imagebanner.dart';

class UdPageWid extends StatelessWidget{
  final Function toUdPage;
  final Function home;
  final double pageCount;
  
  UdPageWid(this.toUdPage, this.pageCount,this.home);
  
  @override
  Widget build(BuildContext context) {
  
    return (Column(
        
      children:<Widget>[
        Container(
          margin: EdgeInsets.all(50),
        ),

        UdPageImg(),
        
        Container(
          padding: EdgeInsets.all(6.0),
          child:Text('Sorry,this page is under construction' ,
            style:  TextStyle(fontSize: 20) , 
        
        ),
        ),
        Container( 
          padding: EdgeInsets.all(6.0),
          child:RaisedButton(
            child:Text('Home'
            ), 
            onPressed: home
          ),
        ),
      ]
    )
    );
  }
}

class UdPageImg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   // AssetImage assetImage =AssetImage('images/flight.png');
   // Image image = Image(image: assetImage,);
    return ImageBanner('assets/images/logo.png');//child: Text('This was supposed to be an image!'));
  }
}