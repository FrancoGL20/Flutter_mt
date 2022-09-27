import 'package:flutter/material.dart';

class Nosotros extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
            title: const Text('About us'),
            backgroundColor: Colors.black
        ),
        body: ListView(
          padding: EdgeInsets.all(25),
          children: const [
            Text('Balcon del zocalo', style: TextStyle(fontSize: 35,),),
            Image(image: AssetImage('images/a.jpg')),
            Text('Una experiencia gastronómica con platillos que reinterpretan la tradición sin detenerse en el pasado..\n', style: TextStyle(fontSize: 15,), textAlign: TextAlign.justify),
            Image(image: AssetImage('images/b.jpg'), height: 250, width: 100,),
            Text('\nUna buena comida, en el mejor lugar con la mejor vista', style: TextStyle(fontSize: 15,), textAlign: TextAlign.justify),
          ]),
      );
}