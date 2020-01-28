import 'package:flutter/material.dart';

import './plumber.dart';
import './Page1Box.dart';
import './Page2Box.dart';
import './StartPage.dart';
import './udpage.dart';
import './booking.dart';
import './booked.dart';

class Boxes extends StatelessWidget{
  final double pageCountNo;
  final Function upSwitch;
  final Function downSwitch;
  final Function udPage;
  final Function homePage;
  
  Boxes(this.upSwitch, this.pageCountNo,this.downSwitch,this.udPage,this.homePage);

  @override
  Widget build (BuildContext context) {
    if(pageCountNo==0)
      {
        return (LogIn(upSwitch,pageCountNo,udPage));
      }
    else if(pageCountNo==1)
      {
        return (ABox(upSwitch,pageCountNo,homePage,udPage));
      }
    else if(pageCountNo==2)
      {
        return (BBox(upSwitch,pageCountNo,homePage,udPage));
      }
    else if(pageCountNo==3)
    {
      return (Plumber(upSwitch,pageCountNo,homePage,udPage));
    }
    else if(pageCountNo==4)
    {
      return (Booking(upSwitch,pageCountNo,homePage,udPage));
    }
    else if(pageCountNo==5)
    {
      return (Booked(homePage));
    }
    else if(pageCountNo==6 || pageCountNo ==11)
      {
        return (UdPageWid(udPage,pageCountNo,homePage));
      }
  }
  }
