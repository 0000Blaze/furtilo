import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget{
  final String _assetPath;

  ImageBanner(this._assetPath);

  @override
  Widget build(BuildContext context){
      return (Container(
        
        width: double.infinity,
        constraints: BoxConstraints.expand(
          height: 150.0,
        ),
        
        decoration: BoxDecoration(color: Colors.grey),
        child: Image.asset(_assetPath,
        fit: BoxFit.cover,
        ),
      )
      );
  }
}