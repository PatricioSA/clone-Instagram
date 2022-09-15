import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  final String name;

  Posts({required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  //Foto do perfil
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Text(name),
                ],
              ),
              Icon(Icons.menu_open)
            ],
          ),
        ),

        //Post
        Container(
          height: 400,
          color: Colors.grey,
        ),

        //Icones abaixo do post
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite_border_outlined),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(Icons.message_rounded),
                  ),
                  Icon(Icons.send),
                ],
              ),

              Icon(Icons.bookmark_border_outlined)
            ],
          ),
        )
      ],
    );
  }
}