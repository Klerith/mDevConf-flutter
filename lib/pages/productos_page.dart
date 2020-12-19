import 'package:flutter/material.dart';
import 'package:shopper_app_demo/widgets/custom_appbar.dart';
import 'package:shopper_app_demo/widgets/marcas_listview.dart';
import 'package:shopper_app_demo/widgets/productos_listview.dart';
import 'package:shopper_app_demo/widgets/titulo_subtitulo.dart';



class ProductosPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          CustomAppBar(),

          TituloSubtitulo(),

          MarcasListview(),

          ProductosListview(),
        ],
      ),
   );
  }
}