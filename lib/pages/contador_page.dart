import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {

  @override
  _ContadorPageState createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {

  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador de clicks'),
      ),
      body: Center(
        child: Text('Valor: $contador', style: TextStyle( fontSize: 40 ) ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        child: Icon( Icons.add, color: Colors.white, ),
        onPressed: () {
          this.contador += 1;

          setState((){});
        },
      ),

    );
  }
}