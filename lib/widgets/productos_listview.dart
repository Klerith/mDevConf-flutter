import 'package:flutter/material.dart';
import 'package:shopper_app_demo/models/producto.dart';



class ProductosListview extends StatelessWidget {

  final List<Producto> productos = [
    Producto(nombre: 'Magic Rival 310 Mouse', precio: 250.54, img: 'assets/mouse1.png'),
    Producto(nombre: 'Razer 86', precio: 75.53, img: 'assets/mouse2.png'),
  ];

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Container(
        width: size.width,
        height: 400,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: productos.length,
          itemBuilder: ( _ , i ) {
            return ProductoItem( productos[i] );
          }
        ),
    );
  }
}


class ProductoItem extends StatelessWidget {

  final Producto producto;

  const ProductoItem( this.producto );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,      
      height: 400,
      margin: EdgeInsets.symmetric( horizontal: 20, vertical: 30),
      padding: EdgeInsets.symmetric( horizontal: 10),
      decoration: BoxDecoration(
        // color: Colors.red
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.04),
              borderRadius: BorderRadius.circular(30)
            ),
            child: Image(image: AssetImage( producto.img )),
          ),

          SizedBox( height: 15 ),
          Text( producto.nombre ),
          SizedBox( height: 8 ),
          Text( '\$${producto.precio}', style: TextStyle( fontWeight: FontWeight.bold, fontSize: 18), ),

        ],
      ),
    );
  }
}