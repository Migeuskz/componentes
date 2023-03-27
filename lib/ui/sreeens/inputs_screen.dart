import 'package:flutter/material.dart';

class InputsScreen extends StatefulWidget {
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
  String _userName = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entradas de datos por el usuario'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: [
          _crearEntradaNombre(),
          _crearEntradaPwsd(),
        ],
      ),
    );
  }

  Widget _crearEntradaNombre() {
    return TextField(
      autofocus: true,
      textAlign: TextAlign.center,
      textCapitalization: TextCapitalization.sentences,
      style: const TextStyle(
        color: Colors.green,
        fontWeight: FontWeight.bold,
      ),
      cursorColor: Colors.red,
      cursorRadius: const Radius.circular(5.0),
      cursorWidth: 5.0,
      // maxLength: 8,
      maxLines: 2,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintText: "Escriba su nombre, por favor",
        labelText: "Nombre: ",
        // helperText: "Nombre",
        prefixIcon: const Icon(Icons.person),
        // iconColor: Colors.blueGrey,
        // prefix: CircularProgressIndicator(),
      ),
      onChanged: (valor) {
        _userName = valor;
        print(_userName);
      },
    );
  }

  Widget _crearEntradaPwsd() {
    return TextField(
      autofocus: true,
      textAlign: TextAlign.center,
      textCapitalization: TextCapitalization.sentences,
      style: const TextStyle(
        color: Colors.green,
        fontWeight: FontWeight.bold,
      ),
      cursorColor: Colors.red,
      cursorRadius: const Radius.circular(5.0),
      cursorWidth: 5.0,
      maxLength: 8,
      obscureText: true,
      keyboardType: TextInputType.number,
      // maxLines: 2,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintText: "Escriba su contraseña",
        labelText: "Password: ",

        // helperText: "Nombre",
        suffixIcon: const Icon(Icons.key),
        // iconColor: Colors.blueGrey,
        // prefix: CircularProgressIndicator(),
      ),
      onChanged: (valor) {
        _userName = valor;
        print(_userName);
      },
    );
  }
}
