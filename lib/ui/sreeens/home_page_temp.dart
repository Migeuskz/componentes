import 'package:componentes/providers/menu_provider.dart';
import 'package:componentes/utils/icons_mapping.dart';
import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  const HomePageTemp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App de componentes'),
      ),
      body: _lista(),
    );
  }
}

Widget _lista() {
  /* print(menuProvider.opciones);
     menuProvider.loadData().then((opciones) {
     print('_lista: ');
     print(opciones);
  });
  return ListView(
    children: _listaItems(),
  );*/
  return FutureBuilder(
    future: menuProvider.loadData(),
    builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
      print('builder: ');
      print(snapshot.data);
      return ListView(
        children: _listaItems(snapshot.data as List<dynamic>),
      );
    },
  );
}

List<Widget> _listaItems(List<dynamic> data) {
  final List<Widget> opciones = [];
  IconMapping iconMap = const IconMapping();

  data.forEach((opt) {
    final tile = ListTile(
      title: Text(opt['texto']),
      leading: iconMap.getIcon(opt['icon']),
      trailing: const Icon(
        Icons.keyboard_arrow_right,
        color: Colors.blueAccent,
      ),
      subtitle: Text(opt['texto2']),
      onTap: () {},
    );
    opciones
      ..add(tile)
      ..add(const Divider());
  });
  return opciones;

  // return const [
  //   ListTile(
  //     title: Text('Stray Kids everywere all around the world'),
  //     subtitle: Text('You make Stray Kids Stay'),
  //   ),
  //   Divider(
  //     thickness: 4.0,
  //     color: Colors.blue,
  //   ),
  //   ListTile(
  //     title: Text('Incluso si hablo en voz alta, nadie escucha'),
  //     subtitle: Text('Another Day - Stray Kids'),
  //   ),
  //   Divider(
  //     thickness: 4.0,
  //     color: Colors.blue,
  //   ),
  //   ListTile(
  //     title: Text(
  //         'Honestly Without you in my lif Deep inside I ve never felt alive'),
  //     subtitle: Text('Deep End - Stray Kids'),
  //   ),
  // ];
}
