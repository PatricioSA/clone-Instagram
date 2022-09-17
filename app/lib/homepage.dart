import 'package:app/pages/home.dart';
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
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: GNav(
            padding: EdgeInsets.all(16),
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.black,
            tabBackgroundColor: Colors.white,
            tabs: const [
              GButton(icon: Icons.home, text: 'Home',),
              GButton(icon: Icons.search, text: 'Search',),
              GButton(icon: Icons.video_library, text: 'Reels',),
              GButton(icon: Icons.shop, text: 'Shop',),
              GButton(icon: Icons.person, text: 'Conta',),
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
        ),
      ),
    );
  }
}
