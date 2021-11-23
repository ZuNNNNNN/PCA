import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = [
    "Matematicasssss",
    "Fisica",
    "Quimica",
    "Computacion",
    "Prueba Scroll",
    "Prueba Scroll",
    "Prueba Scroll",
    "Prueba Scroll",
    "Prueba Scroll",
    "Prueba Scroll",
    "Prueba Scroll",
    "Prueba Scroll",
    "Prueba Scroll",
    "Prueba Scroll",
    "Prueba Scroll",
    "Prueba Scroll",
    "Prueba Scroll",
    "Prueba Scroll",
    "Prueba Scroll",
    "Prueba Scroll",
    "Prueba Scroll",
    "Prueba Scroll",
    "Prueba Scroll",
    "Prueba Scroll",
    "Prueba Scroll",
    "Prueba Scroll",
    "Prueba Scroll",
    "Prueba Scroll",
    "Prueba Scroll",
    "Prueba Scroll"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: ListView(children: _crearItems()),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = [];
    for (String opcion in opciones) {
      final tempWidget = ListTile(
        title: Text(opcion),
        //crea un subtitulo
        subtitle: Text("Porcentaje completado: "),
        //crea un logo en la parte derecha
        leading: Icon(Icons.account_balance_wallet),
        //crea un logo en la parte izquierda
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {},
      );
      lista.add(tempWidget);
      lista.add(Divider());
    }

    return lista;
    //retorna una lista vacia
  }
}
