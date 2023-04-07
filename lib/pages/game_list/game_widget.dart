import 'package:flutter/material.dart';
import 'package:games/model/game.dart';

class GameWidget extends StatelessWidget {
  const GameWidget({
    Key? key,
    required this.game,
  }) : super(key: key);

  final Game game;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(game.title),
      leading: game.imageURL.isNotEmpty ? Image.network(game.imageURL) : null,
      trailing: game.finished
          ? const Icon(
              Icons.verified,
              color: Colors.green,
            )
          : null,
    );
  }
}
