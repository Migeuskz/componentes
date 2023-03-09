import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  const HomePageTemp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App de componentes'),
      ),
      body: ListView(
        children: const [
          ListTile(
            title: Text('Stray Kids everywere all around the world'),
            subtitle: Text('You make Stray Kids Stay'),
          ),
          Divider(
            thickness: 4.0,
            color: Colors.blue,
          ),
          ListTile(
            title: Text('Incluso si hablo en voz alta, nadie escucha'),
            subtitle: Text('Another Day - Stray Kids'),
          ),
          Divider(
            thickness: 4.0,
            color: Colors.blue,
          ),
          ListTile(
            title: Text(
                'Honestly Without you in my lif Deep inside I ve never felt alive'),
            subtitle: Text('Deep End - Stray Kids'),
          ),
        ],
      ),
    );
  }
}
