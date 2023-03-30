import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class InputsScreen extends StatefulWidget {
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
  String _userName = '';
  String _password = '';
  String _email = '';
  String _fecha = '';
  final TextEditingController _inputFieldDateController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entradas de datos por el usuario'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: [
          const Divider(),
          _crearEntradaNombre(),
          const Divider(),
          _crearEntradaPwsd(),
          const Divider(),
          _crearEntradaMail(),
          const Divider(),
          _crearEntradaFecha(),
          const Divider(),
          _crearDropDown(),
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
      autofocus: false,
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
        print(_password);
      },
    );
  }

  Widget _crearEntradaMail() {
    return TextField(
      autofocus: false,
      textAlign: TextAlign.center,
      textCapitalization: TextCapitalization.sentences,
      style: const TextStyle(
        color: Colors.green,
        fontWeight: FontWeight.bold,
      ),
      cursorColor: Colors.red,
      cursorRadius: const Radius.circular(10.0),
      cursorWidth: 5.0,
      keyboardType: TextInputType.emailAddress,
      // maxLines: 2,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintText: "Escriba su Email",
        labelText: "E-mail: ",

        // helperText: "Nombre",
        prefixIcon: const Icon(Icons.mail),
        // iconColor: Colors.blueGrey,
        // prefix: CircularProgressIndicator(),
      ),
      onChanged: (valor) {
        _userName = valor;
        print(_email);
      },
    );
  }

  Widget _crearEntradaFecha() {
    return TextField(
      controller: _inputFieldDateController,
      enableInteractiveSelection: false,
      textAlign: TextAlign.center,
      textCapitalization: TextCapitalization.sentences,
      style: const TextStyle(
        color: Colors.green,
        fontWeight: FontWeight.bold,
      ),
      cursorColor: Colors.red,
      cursorRadius: const Radius.circular(10.0),
      cursorWidth: 5.0,
      keyboardType: TextInputType.datetime,
      // maxLines: 2,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintText: "Escriba su Fecha de Nacimiento",
        labelText: "Fecha de nacimiento: ",

        // helperText: "Nombre",
        prefixIcon: const Icon(Icons.calendar_month),
        // iconColor: Colors.blueGrey,
        // prefix: CircularProgressIndicator(),
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
        _selectDate(context);
      },
    );
  }

  _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2018),
      lastDate: DateTime(2025),
    );
    if (picked != null) {
      setState(() {
        _fecha = picked.toString();
        // print(_fecha);
        _fecha = DateFormat('dd-MM-yyyy').format(picked);
        _inputFieldDateController.text =
            _fecha; // muestra la fecha en el TextField
      });
    }
  }

  Widget _crearDropDown() {
    return DropdownButton(items: const [], onChanged: (opt) {});
  }

  List<DropdownMenuItem<String>> getOptionsDropDown() {
    List<String> _lenguajes = ['Java', 'PHP', 'JavaScript', 'Dart'];
    List<DropdownMenuItem<String>> lista = List();
    _lenguajes.forEach((lenguaje) {
      lista.add(DropdownMenuItem(
        child: Text(lenguaje),
        value: lenguaje,
      ));
    });
    return lista;
  }
}
