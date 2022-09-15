import 'package:app/pages/share.dart';
import 'package:app/reutilizaveis/posts.dart';
import 'package:app/reutilizaveis/stories.dart';
import 'package:flutter/material.dart';

class UserHome extends StatelessWidget {
  final List pessoas = [
    'Seu story',
    'Igor',
    'Leidiane',
    'pessoa 4',
    'pessoa 5',
    'pessoa 6',
    'pessoa 7',
    'pessoa 8',
    'pessoa 9',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //titleSpacing: 12,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Instagram'),
            Row(
              children: [
                Icon(Icons.add_box),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Icon(Icons.favorite_border_outlined),
                ),
                GestureDetector(
                  child: Icon(Icons.share),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SharePage()),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          //Stories
          Container(
            height: 110,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: pessoas.length,
                itemBuilder: (context, index) {
                  return Stories(name: pessoas[index]);
                }),
          ),

          //Posts
          Expanded(
            child: ListView.builder(
              itemCount: pessoas.length,
              itemBuilder: (context, index) {
                return Posts(name: pessoas[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
