import 'package:flutter/material.dart';
import 'package:shopper_app_demo/pages/contador_page.dart';
import 'package:shopper_app_demo/pages/productos_page.dart';

 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'productos',
      routes: {
        'contador': ( _ ) => ContadorPage(),
        'productos': ( _ ) => ProductosPage()
      },
      // theme: ThemeData.dark().copyWith(
      //   primaryColor: Colors.pink[600],
      //   floatingActionButtonTheme: FloatingActionButtonThemeData(
      //     backgroundColor: Colors.pink[600]
      //   )
      // ),
    );
  }
}