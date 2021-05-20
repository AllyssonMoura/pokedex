import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon.dart';
import 'package:pokedex/style.dart';

class Details extends StatelessWidget {
  final Pokemon pokemon;

  Details(this.pokemon);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xFF31a7d7), borderRadius: BorderRadius.circular(4)),
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(children: [
                Text("Altura",
                    style: TextStyle(
                        color: white,
                        fontSize: 22,
                        fontWeight: FontWeight.w700)),
                Text("${this.pokemon.height} m",
                    style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.w700)),
                SizedBox(height: 20),
                Text("Tipo",
                    style: TextStyle(
                        color: white,
                        fontSize: 22,
                        fontWeight: FontWeight.w700)),
                SizedBox(height: 5),
                Container(
                    child: Text(pokemon.type,
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w700)),
                    decoration: BoxDecoration(
                        color: orange, borderRadius: BorderRadius.circular(8)),
                    padding: EdgeInsets.all(5))
              ]),
              Column(
                children: [
                  Text("Peso",
                      style: TextStyle(
                          color: white,
                          fontSize: 22,
                          fontWeight: FontWeight.w700)),
                  Text("${this.pokemon.weight} kg",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w700)),
                  SizedBox(height: 20),
                  Text("Habilidade",
                      style: TextStyle(
                          color: white,
                          fontSize: 22,
                          fontWeight: FontWeight.w700)),
                  SizedBox(height: 10),
                  Text(pokemon.ability,
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w700))
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
