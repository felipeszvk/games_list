import 'package:flutter/material.dart';
import 'package:games/pages/game_list/game_widget.dart';

import '../../database/database.dart';

class GameListPage extends StatelessWidget {
  const GameListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final games = Database.listGames();


    return Scaffold(
      appBar: AppBar(
        title: const Text('Meus Jogos'),
      ),
      body: ListView.separated(
        itemCount: games.length,
        separatorBuilder: (_,__) => const Divider(),
        itemBuilder: (_, index) => GameWidget(
            game: games[index],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
