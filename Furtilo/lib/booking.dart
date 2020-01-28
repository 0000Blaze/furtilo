import 'package:flutter/material.dart';

class Booking extends StatelessWidget{
  final Function switcher;
  final double countNo;
  final Function home;
  final Function udPage;
  Booking(this.switcher,this.countNo,this.home,this.udPage);

  @override

  Widget build(BuildContext context) {
return Container(
      padding: EdgeInsets.only(top: 30),
      margin:EdgeInsets.all(00.0),
          
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[ 
              
              Text(' What do you want to do?',
              style: TextStyle(fontSize: 20),
              ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: ' Describe your task'
                  ),
                ),
              
              Container(
                margin: EdgeInsets.all(20),

              ),
              
              Text(' City:',
              style: TextStyle(fontSize: 20),
              ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: ' Enter City Name'
                  ),
                ),
              
              Container(
                margin: EdgeInsets.all(10),

              ),
              
              Text(' Street Name:',
              style: TextStyle(fontSize: 20),
              ),
                TextField(
                  decoration: InputDecoration(
                    labelText: ' Enter Street Name',
                  ),
                ),

              Container(
                margin: EdgeInsets.all(10),
              ),
              
              
              Text(' House name:',
              style: TextStyle(fontSize: 20),
              ),
                
                TextField(
                  decoration: InputDecoration(
                    labelText: ' Enter house name/number',
                  ),
                ),
            
              Container(
                margin: EdgeInsets.all(10),

              ),
              
              
              Row(
                children: <Widget>[
                  Container(
                    child: Text('   Estimated Service Charge:  ',
                    style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Text('Rs. 100',
                        style: TextStyle(fontSize: 20),
                        ),
                      
                      ],
                    ),
                  )
                ],
              ),
              
              Container(
                margin:EdgeInsets.all(00.0), 
                child: Row(
                  children:<Widget>[
                  Container(
                    margin: const EdgeInsets.all(30.0),
                    width: 120,
                    height: 60,
                    child:RaisedButton(
                  
                      child:const Text('Book',
                      style: TextStyle(fontSize:20),
                      ),
                  
                      onPressed: switcher,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(20.0),
                    width: 140,
                    height: 60,
                    child:RaisedButton(
                      hoverColor: Colors.lightBlue,
                      color: Colors.orangeAccent,
                      onPressed: udPage,
                      child: Text('Price list',
                        style: TextStyle(fontSize: 20),
                        ),
                      )
                  )
                  ],
                ),
              ),
              
               
            ],
          ),        
        ),
    );
  }
}