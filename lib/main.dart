import 'package:componentes/ui/sreeens/home_page_temp.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'App Componentes',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: const HomePageTemp(),
      ),
    );
  }
}
