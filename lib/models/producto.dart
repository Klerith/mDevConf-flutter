import 'package:meta/meta.dart';

class Producto {
  final String nombre;
  final double precio;
  final String img;

  Producto({
    @required this.nombre,
    @required this.precio,
    @required this.img
  });
}