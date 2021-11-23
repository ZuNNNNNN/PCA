import 'package:flutter/material.dart';
//comando importm para importar paquete
import 'package:flutter/material.dart';
import 'package:prueba_coigo/src/pages/alert_page.dart';
import 'package:prueba_coigo/src/providers/menu_provider.dart';
import 'package:prueba_coigo/src/utils/icono_string_util.dart';

//stless para importar
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes"),
      ),
      body: _lista(),
    );
  }

  //para json-----------------------------------------------------------
  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        if (snapshot.hasError) {
          return Center(child: Text('Error'));
        }

        if (!snapshot.hasData) {
          return Center(child: Text('No hay data'));
        }

        return ListView(
          children: _getListItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _getListItems(List<dynamic>? items, BuildContext context) {
    final List<Widget> options = [];

    items?.forEach((opt) {
      final tmp = ListTile(
        title: Text(opt['texto']),
        //cargamos todos los icons del archivo de json
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {
          Navigator.pushNamed(context, opt['ruta']);
          //Ejemplo de navegacion entre pantallas
          //final route = MaterialPageRoute(builder: (context) {
          //  return AlertPage();
          // });
          // Navigator.push(context, route);
        },
      );

      options
        ..add(tmp)
        ..add(Divider());
    });

    return options;
  }
}
