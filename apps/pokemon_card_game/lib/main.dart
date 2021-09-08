import 'package:flutter/material.dart';

//PokCard Game

//https://raw.githubusercontent.com/scitbiz/flutter_pokedex/master/assets/images/squirtle.png
//https://raw.githubusercontent.com/scitbiz/flutter_pokedex/master/assets/images/bulbasaur.png
//https://raw.githubusercontent.com/scitbiz/flutter_pokedex/master/assets/images/charmander.png

/*
App para aprender:

- Sistema de pagamentos.
- Salvar dados de pagamentos.
- Sistema de multiplayer no firestore.

*/

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BattlePage(),
    );
  }
}

class Battle extends InheritedWidget {
  Battle({required this.repository, required child}) : super(child: child);
  final BattleRepository repository;
  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }

  static Battle of(BuildContext context) => context
      .dependOnInheritedWidgetOfExactType<Battle>()!; //TODO: Copiar o backdrop
}

class BattleRepository {
  // MyChoice, HisChoice (Treinar decisao com cloud functions)
  send(int value) {}
}

class BattleController {}

class BattlePage extends StatefulWidget {
  const BattlePage({Key? key}) : super(key: key);

  @override
  _BattlePageState createState() => _BattlePageState();
}

class _BattlePageState extends State<BattlePage> {
  @override
  Widget build(BuildContext context) {
    return Battle(
      repository: BattleRepository(),
      child: Scaffold(
        body: SafeArea(
          minimum: EdgeInsets.symmetric(vertical: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CardButtonsRow(
                isMe: false,
              ),
              CardButtonsRow(),
            ],
          ),
        ),
      ),
    );
  }
}

/*

final pokeButtons = <PokeButton>[
PokeButton(
            'https://raw.githubusercontent.com/scitbiz/flutter_pokedex/master/assets/images/charmander.png',
            Colors.orange,
            isMe: isMe),
        PokeButton(
            'https://raw.githubusercontent.com/scitbiz/flutter_pokedex/master/assets/images/bulbasaur.png',
            Colors.green,
            isMe: isMe),
        PokeButton(
            'https://raw.githubusercontent.com/scitbiz/flutter_pokedex/master/assets/images/squirtle.png',
            Colors.blue,
            isMe: isMe),
];

*/
List<PokeButton> pokeButtons(bool isMe, int index, VoidCallback onTap) {
  return <PokeButton>[
    PokeButton(
        'https://raw.githubusercontent.com/scitbiz/flutter_pokedex/master/assets/images/charmander.png',
        Colors.orange,
        index,
        isMe: isMe,
        onTap: onTap),
    PokeButton(
        'https://raw.githubusercontent.com/scitbiz/flutter_pokedex/master/assets/images/bulbasaur.png',
        Colors.green,
        index,
        isMe: isMe,
        onTap: onTap),
    PokeButton(
        'https://raw.githubusercontent.com/scitbiz/flutter_pokedex/master/assets/images/squirtle.png',
        Colors.blue,
        index,
        isMe: isMe,
        onTap: onTap),
  ];
}

class CardButtonsRow extends StatelessWidget {
  const CardButtonsRow({Key? key, this.isMe = true}) : super(key: key);
  final bool isMe;

  onTap(){

  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      // children: List.generate(3,
      //     (index) => pokeButtons(isMe, index, )[index]),
    );
  }
}

class PokeButton extends StatelessWidget {
  const PokeButton(this.url, this.color, this.index,
      {Key? key, required this.isMe, required this.onTap})
      : super(key: key);
  final String url;
  final Color color;
  final bool isMe;
  final int index;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return isMe
        ? MaterialButton(
            onPressed: () {
              Battle.of(context).repository.send(index);
            },
            child: CircleAvatar(
              backgroundColor: color,
              foregroundImage: NetworkImage(url),
              radius: 64,
            ))
        : CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 64,
          );
  }
}
