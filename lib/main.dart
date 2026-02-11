import 'package:flutter/material.dart';

void main() => runApp(AppTallerMecanico());

class AppTallerMecanico extends StatelessWidget {
  const AppTallerMecanico({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LosMecanicos(),

    );
  }
}// fin clase AppTallerMecanico

class LosMecanicos extends StatelessWidget {
  const LosMecanicos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar:AppBar(
      centerTitle: true,
  // Título del taller
  title: const Text(
    'Taller Mecánico el Nava',
    style: TextStyle(color: Colors.white), 
  ),
  // Color guinda moderno (Deep Carmine)
  backgroundColor: const Color(0xFF800020), 
  // Icono de carro a la izquierda
  leading: const Icon(
    Icons.directions_car,
    color: Colors.white,
  ),
  // Iconos de acción a la derecha
  actions: [
    IconButton(
      icon: const Icon(Icons.build, color: Colors.white), // Herramienta
      onPressed: () {},
    ),
    IconButton(
      icon: const Icon(Icons.emergency, color: Colors.white), // Emergencia
      onPressed: () {},
    ),
    IconButton(
      icon: const Icon(Icons.photo_camera, color: Colors.white), // Cámara
      onPressed: () {},
    ),
  ],
) ,

body: SingleChildScrollView(
  child: Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      children: [
        // Ahora enviamos: Título, Subtítulo y la URL de la imagen
        _crearTarjeta('Eliseo nava', 'Afinacion motor', 'https://raw.githubusercontent.com/Eliseo128/Imagenes-para-flutter-6to-I-fecha-11-feb-2026/refs/heads/main/mecanico1.png'),
        _crearTarjeta('Anastacio', 'Especialista en frenos', 'https://raw.githubusercontent.com/Eliseo128/Imagenes-para-flutter-6to-I-fecha-11-feb-2026/refs/heads/main/mecanico2.png'),
        _crearTarjeta('Chalan', 'Limpia todo', 'https://raw.githubusercontent.com/Eliseo128/Imagenes-para-flutter-6to-I-fecha-11-feb-2026/refs/heads/main/mecanico3.png'),
        _crearTarjeta('Diagnóstico', 'Escaneo digital', 'https://cdn-icons-png.flaticon.com/512/2961/2961159.png'),
      ],
    ),
  ),
),


    );// fin de scaffold
  }
}// fin clase LosMecanicos


Widget _crearTarjeta(String titulo, String subtitulo, String urlImagen) {
  return Card(
     // Verde claro
    elevation: 6, // Sombreado
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    margin: const EdgeInsets.symmetric(vertical: 8),
    child: ListTile(
      leading: CircleAvatar(
        // Usamos el parámetro urlImagen aquí
        backgroundImage: NetworkImage(urlImagen),
        backgroundColor: Colors.white,
      ),
      title: Text(
        titulo,
        style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        subtitulo,
        style: const TextStyle(color: Colors.black),
      ),
      trailing: const Icon(
        Icons.favorite,
        color: Colors.red,
      ),
    ),
  );
}