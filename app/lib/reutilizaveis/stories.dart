import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  final String name;

  Stories({required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey,
            ),
          ),
          Text(name),
        ],
      ),
    );
  }
}
