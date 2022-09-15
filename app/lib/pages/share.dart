import 'package:app/reutilizaveis/mensagens.dart';
import 'package:flutter/material.dart';

class SharePage extends StatelessWidget {
  TextEditingController _texto = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('nome'),
            Row(
              children: [
                Icon(Icons.add_ic_call_rounded),
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.add_outlined),
              ],
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            //BARRA DE PESQUISA
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Pesquisar',
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10)),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                fillColor: Colors.grey[350],
                filled: true,
                suffixIcon: IconButton(
                  onPressed: () {
                    _texto.clear();
                  },
                  icon: Icon(Icons.clear),
                ),
              ),
              controller: _texto,
            ),

            SizedBox(
              height: 10,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Mensagens',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text('Solicitações',
                    style: TextStyle(fontSize: 18, color: Colors.blue))
              ],
            ),

            SizedBox(
              height: 20,
            ),

            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) => Mensagens(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
