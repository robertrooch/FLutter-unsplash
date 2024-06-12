import 'package:flutter/material.dart';
import 'create_unplash_section.dart';
import 'view_unplash_section.dart';

class WithTabBar extends StatefulWidget {
  @override
  _WithTabBarState createState() => _WithTabBarState();
}

class _WithTabBarState extends State<WithTabBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _pages = [
      CreateUnsplashSection(),
      ViewUnsplashSection(),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Gestión de Fotos'),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.photo),
            label: 'Crear Foto',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Ver Fotos',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}



