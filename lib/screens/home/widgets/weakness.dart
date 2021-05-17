import 'package:flutter/cupertino.dart';
import 'package:pokedex/models/pokemon.dart';
import 'package:pokedex/style.dart';

class Weakness extends StatelessWidget {
  final Pokemon pokemon;

  Weakness(this.pokemon);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          child: Column(
            children: [
              Container(
                  child: Text(pokemon.weakness1,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: white, fontSize: 20)),
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                      color: darkBlue,
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(10))),
                  alignment: AlignmentDirectional.center)
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              Container(
                  child: Text(pokemon.weakness2,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: white, fontSize: 20)),
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                      color: yellow,
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(10))),
                  alignment: AlignmentDirectional.center)
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              Container(
                  child: Text(pokemon.weakness3,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: white, fontSize: 20)),
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                      color: darkYellow,
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(10))),
                  alignment: AlignmentDirectional.center)
            ],
          ),
        ),
      ],
    );
  }
}
