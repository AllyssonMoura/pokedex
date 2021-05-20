import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon.dart';
import 'package:pokedex/screens/home/widgets/details.dart';
import 'package:pokedex/screens/home/widgets/weakness.dart';
import 'package:pokedex/style.dart';

class Home extends StatelessWidget {
  final Pokemon pokemon = Pokemon(
      name: "Charmander",
      photo: "assets/images/charmander.png",
      resume:
          "Desde o momento em que nasce, uma chama arde na ponta de sua cauda. Sua vida acabaria se a chama se apagasse. Tem preferência por coisas quentes. Quando chove, diz-se que o vapor jorra pela ponta da cada.",
      height: 0.6,
      weight: 8.5,
      type: "Fogo",
      ability: "Chama",
      weakness1: "Água",
      weakness2: "Terra",
      weakness3: "Rocha");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: red,
        title: Text(pokemon.name),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Image.asset(pokemon.photo),
              Text(
                pokemon.resume,
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Image.asset("assets/images/bola_azul.png"),
                SizedBox(width: 15),
                Image.asset("assets/images/bola_vermelha.png")
              ]),
              SizedBox(height: 10),
              Details(pokemon),
              SizedBox(height: 30),
              Row(children: [
                Text("Fraquezas",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ]),
              SizedBox(height: 10),
              Weakness(pokemon),
            ],
          ),
        ),
      ),
    );
  }
}
