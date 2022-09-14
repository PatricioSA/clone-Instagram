import 'package:app/home.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  //páginas de navegação
  final List<Widget> _children = [
    UserHome(),
    Center(child: Text('search'),),
    Center(child: Text('reels'),),
    Center(child: Text('shop'),),
    Center(child: Text('conta'),),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: GNav(
        activeColor: Colors.blue,
        tabs: const [
          GButton(icon: Icons.home),
          GButton(icon: Icons.search),
          GButton(icon: Icons.video_library),
          GButton(icon: Icons.shop),
          GButton(icon: Icons.person),
        ],
        selectedIndex: _selectedIndex,
        onTabChange: (index) {
          setState(
            () {
              _selectedIndex = index;
            },
          );
        },
      ),
    );
  }
}
