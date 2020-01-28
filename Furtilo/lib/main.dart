import 'package:flutter/material.dart';

import'./preview.dart';
import './not1.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return MyAppState();
  }
}
class MyAppState extends State<MyApp>//*/
//class MyApp extends StatelessWidget
{
  var pageCount = 0.0;
  
  void _forwardButtonPressed()
  {
    setState(()
    {
      pageCount +=1;
    });

  }
  void _backwardButtonPressed()
  {
    setState(()
    {
      pageCount = pageCount-1;
    });

  }
  void _udButtonPressed()
  {
    setState(()
    {
      pageCount =11;
    }); 
  }
  void _homeButtonPressed()
  {
    setState(() {
      pageCount = 1;
    });
  }
  @override
  Widget build (BuildContext context){
    if(pageCount==0 || pageCount==1 || pageCount==11)
    {
    return Preview(_forwardButtonPressed,pageCount,_backwardButtonPressed, _udButtonPressed, _homeButtonPressed );
    }
    else
    {
      return Previews(_forwardButtonPressed,pageCount,_backwardButtonPressed, _udButtonPressed, _homeButtonPressed );
    }
  }
}