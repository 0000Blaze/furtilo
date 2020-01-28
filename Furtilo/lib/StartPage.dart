import 'package:flutter/material.dart';

import './imagebanner.dart';

class LogIn extends StatelessWidget{
  final Function switcher;
  final double countNo;
  final Function udPage;

  LogIn(this.switcher,this.countNo,this.udPage);

  @override

  Widget build(BuildContext context) {
return Container(
      padding: EdgeInsets.only(top: 40),
      margin:EdgeInsets.all(00.0),
        
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              
              LogoImg(),

              Container(
                padding: EdgeInsets.all(6.0),
                child:Text('Id Name :',
                  style: TextStyle(fontSize: 22),
                  textAlign: TextAlign.left
                ),
              ),
                 
                  TextFormField(
                    validator: (value) {
                      if(value.isEmpty){
                        return 'Please enter name';
                      }
                      else
                      {
                      return null;
                      }
                    },
                    decoration: InputDecoration(
                      labelText: '  Enter name'
                    ),
                  ),
              
              Container(
                padding: EdgeInsets.all(6.0),
                child:Text('Password :',
                style: TextStyle(fontSize: 22),
                ),
                  
              ),    
                
                  TextField(
                    obscureText : true,
                    
                    decoration: InputDecoration(
                      labelText: '  Enter password',
                    ),
                  ),

              Container(
              margin:EdgeInsets.all(10.0), 
              child: Row(
                  children:<Widget>[
                  
                  Container(
                    margin: const EdgeInsets.all(30.0),
                    width: 120,
                    height: 60,
                    child:RaisedButton(
                  
                      child:const Text('Log in',
                      style: TextStyle(fontSize:20),
                      ),
                      onPressed: switcher,
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.all(30.0),
                    width: 120,
                    height: 60,
                    child:RaisedButton(
                  
                      child:const Text('Sign up',
                      style: TextStyle(fontSize:20),
                      ), 
                      color: Colors.orangeAccent,                    
                      onPressed: udPage,
                    ),
                  ),
                  ],
                ),
              ), 
            ],
          ),        
        ),
    );
  }
}
class LogoImg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ImageBanner('assets/images/logo.png');//child: Text('This was supposed to be an image!'));
  }
}