import 'package:flutter/material.dart';
import 'package:games/pages/game_list/games_list_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meus Jogos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GameListPage(),
    );
  }
}