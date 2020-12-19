import 'package:flutter/material.dart';

class MarcasListview extends StatelessWidget {

  final List<String> marcas = ['Magic', 'Surface Arc', 'Razer', 'All Products'];


  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only( top: 20 ),
      width: size.width,
      height: 40,
      child: ListView.builder(
        itemCount: marcas.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: ( context, i) {

          return MarcaItem( texto: this.marcas[i], seleccionado: i == 0, );

        }
      )
    );
  }
}


class MarcaItem extends StatelessWidget {

  final String texto;
  final bool seleccionado;

  const MarcaItem({ @required this.texto, @required this.seleccionado });

  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric( horizontal: 20 ),
      child: Column(
          children: [
            Text( this.texto, style: TextStyle( 
              fontSize: 18, 
              fontWeight: (this.seleccionado ) ? FontWeight.bold : FontWeight.w300
              )
            ),
            SizedBox( height: 5 ),

            if ( this.seleccionado )
              Icon( Icons.circle, size: 10 )
          ],
        ),
    );
  }
}