import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon.dart';
import 'package:pokedex/style.dart';

class Details extends StatelessWidget {
  final Pokemon pokemon;

  Details(this.pokemon);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      width: 500,
      height: 260,
      decoration: BoxDecoration(
          color: lightBlue,
          borderRadius: const BorderRadius.all(const Radius.circular(10))),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                child: Column(
                  children: [
                    Text("Altura",
                        style: TextStyle(
                            color: white,
                            fontSize: 22,
                            fontWeight: FontWeight.w700)),
                    Text("${this.pokemon.height} m",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w700)),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                child: Column(
                  children: [
                    Text("Peso",
                        style: TextStyle(
                            color: white,
                            fontSize: 22,
                            fontWeight: FontWeight.w700)),
                    Text("${this.pokemon.weight} kg",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w700))
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 63, vertical: 50),
                child: Column(
                  children: [
                    Text("Tipo",
                        style: TextStyle(
                            color: white,
                            fontSize: 22,
                            fontWeight: FontWeight.w700)),
                    Container(
                        child: Text(pokemon.type,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w700)),
                        width: 80,
                        height: 40,
                        decoration: BoxDecoration(
                            color: orange,
                            borderRadius: const BorderRadius.all(
                                const Radius.circular(10))),
                        margin: EdgeInsets.symmetric(vertical: 5),
                        alignment: AlignmentDirectional.center)
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 55, vertical: 30),
                child: Column(
                  children: [
                    Text("Habilidade",
                        style: TextStyle(
                            color: white,
                            fontSize: 22,
                            fontWeight: FontWeight.w700)),
                    Text(pokemon.abiliity,
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w700))
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
