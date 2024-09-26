import 'package:flutter/material.dart';

class InitPage extends StatefulWidget {
  const InitPage({super.key});

  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (int value) {
          setState(() {
            _currentIndex = value;
          });
        },
        selectedItemColor: Colors.black,  // Color del ícono seleccionado
        unselectedItemColor: Colors.grey, // Color de los íconos no seleccionados
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            label: "Principal",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Shorts",
            icon: Icon(Icons.play_arrow),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.add_circle_outline_rounded,
              size: 40.0, // Tamaño más grande para el botón central
              color: Colors.red, // Color destacado para simular el botón de crear en YouTube
            ),
          ),
          BottomNavigationBarItem(
            label: "Suscripciones",
            icon: Icon(Icons.subscriptions_rounded),
          ),
          BottomNavigationBarItem(
            label: "Biblioteca",
            icon: Icon(Icons.video_collection_rounded),
          ),
        ],
      ),
      body: _getSelectedPage(), // Método para cambiar la página según el índice
    );
  }

  // Método para retornar la página correspondiente según el índice seleccionado
  Widget _getSelectedPage() {
    switch (_currentIndex) {
      case 0:
        return const Center(child: Text('Página Principal'));
      case 1:
        return const Center(child: Text('Shorts'));
      case 2:
        return const Center(child: Text('Crear'));
      case 3:
        return const Center(child: Text('Suscripciones'));
      case 4:
        return const Center(child: Text('Biblioteca'));
      default:
        return const Center(child: Text('Página Principal'));
    }
  }
}
