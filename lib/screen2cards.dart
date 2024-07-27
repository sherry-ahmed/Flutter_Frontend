import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class MyCardWidget extends StatelessWidget {

  final String imagePath;
  final String name;

  const MyCardWidget({
    Key? key,
    required this.imagePath,
    required this.name,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
        Expanded(
          flex: 3,
          
          child: Container(padding: EdgeInsets.all(16),
          child: Center(child: Image(image: AssetImage(imagePath),))),
          
        ),
        Expanded(flex:1, child: Center(child: Text(name,style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.38)),),))
        
        
      ],
    );
  }
}