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
        children: _crearItemsCorta(),
      ),
    );
  }

  List<Widget> crearItems() {
    List<Widget> lista = new List<Widget>();
    // for (var i = 1; i <= 15; i++) {
    //   final tempWidget = ListTile(
    //     title: Text("Contacto " + "$i" + ": "),
    //   );
    //   lista.add(tempWidget);
    //   lista.add(Divider(
    //     color: Colors.blueAccent[50],
    //     endIndent: 1,
    //   ));
    // }
    for (String opcion in opcionesDeLista) {
      final tempWidget = ListTile(
        title: Text(opcion),
      );
      lista.add(tempWidget);
    }
    return lista;
  }

  List<Widget> _crearItemsCorta() {
    var widgets = opcionesDeLista.map((producto) {
      return Column(
        children: [
          ListTile(
            title: Text(producto + '!'),
            subtitle: Text('Subtitulo'),
            leading: Icon(Icons.adb),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () => {},
          ),
          Divider()
        ],
      );
    }).toList();
    return widgets;
  }
}
