import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opcionesDeLista = ["Uno", "Dos", "Tres", "Cuatro", "Cinco"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes Temporales"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: crearItems(),
      ),
    );
  }

  List<Widget> crearItems() {
    List<Widget> lista = new List<Widget>();
    for (var i = 1; i <= 15; i++) {
      final tempWidget = ListTile(
        title: Text("Contacto " + "$i" + ": "),
      );
      lista.add(tempWidget);
      lista.add(Divider(
        color: Colors.blueAccent[50],
        endIndent: 1,
      ));
    }
    // for (var opcion in opcionesDeLista) {
    //   final tempWidget = ListTile(
    //     title: Text(opcion),
    //   );
    //   lista.add(tempWidget);
    // }
    return lista;
  }
}
