import 'package:flutter/material.dart';


class TituloSubtitulo extends StatelessWidget {
  
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Best Collection', style: TextStyle( fontSize: 25 )),
          SizedBox( height: 8 ),
          Text('Computer Mouse', style: TextStyle( fontSize: 30, fontWeight: FontWeight.bold ))
        ],
      ),   
    );
  }
}