import 'package:flutter/material.dart';
class MyCardWidget extends StatelessWidget {

  final String imagePath;
  final String title;
  final String subtitle;
  final String description;

  const MyCardWidget({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.description,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: 70,
          padding: EdgeInsets.only(top: 20),
          child: Image(image: AssetImage(imagePath),),
          /*decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath),
              //fit: BoxFit.cover,
            ),
          ),*/
        ),
        Container(
          padding: EdgeInsets.all(5),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(5),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              subtitle,
              style: const TextStyle(
                fontSize: 12,
                color: Color(0x4BFFFFFF)
                
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(7-0),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              description,
              
              style: const TextStyle(
                color: Color.fromRGBO(255, 255, 255, 0.532),
              ),
            ),
          ),
        ),
      ],
    );
  }
}