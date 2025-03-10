import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Miriam Vargas Carrillo 22308051281110'),
          backgroundColor: Colors.indigoAccent,
          titleTextStyle: TextStyle(
            color: const Color.fromARGB(251, 255, 255, 255),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        body: ListView.separated(
          itemCount: animals.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(
                animals[index]['icon'],
                color: animals[index]['color'], // Color personalizado para cada ícono
              ),
              title: Text(animals[index]['name']),
            );
          },
          separatorBuilder: (context, index) {
            return Divider(
              color: const Color.fromARGB(255, 161, 161, 161), // Color de la línea separadora
              thickness: 1, // Grosor de la línea
            );
          },
        ),
      ),
    );
  }

  // Lista de animales con sus íconos y colores personalizados
  final List<Map<String, dynamic>> animals = [
    {'icon': Icons.pets, 'name': 'Perro', 'color': const Color.fromARGB(255, 150, 107, 43)},
    {'icon': Icons.cruelty_free, 'name': 'Conejo', 'color': const Color.fromARGB(255, 231, 147, 196)},
    {'icon': Icons.egg, 'name': 'Huevo', 'color': const Color.fromARGB(255, 216, 207, 129)},
    {'icon': Icons.bug_report, 'name': 'Insecto', 'color': const Color.fromARGB(255, 100, 165, 162)},
    {'icon': Icons.eco, 'name': 'Hoja', 'color': const Color.fromARGB(255, 91, 160, 100)},

  ];
}