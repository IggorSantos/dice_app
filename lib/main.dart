import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  var leftDiceNumber = 5;
    return Center(
          child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                print('Botão esquerdo foi clicado!');
              },
              child: Image.asset('images/dice$leftDiceNumber.png'), //Uma Forma mais simples de escrever o mesmo codigo abaixo
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                print('Botão direito foi clicado!');
              },
              child: Image(image: AssetImage('images/dice1.png')),
            ),
          ),
        ],
      ),
    );
  }
}
