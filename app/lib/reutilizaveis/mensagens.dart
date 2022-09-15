import 'package:flutter/material.dart';

class Mensagens extends StatelessWidget {
  const Mensagens({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text('nome'),
            ],
          ),
          Icon(Icons.camera_alt_outlined)
        ],
      ),
    );
  }
}
