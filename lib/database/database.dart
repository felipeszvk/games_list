import 'package:games/model/game.dart';

class Database {
  static final List<Game> _myGames = [
    Game('Age of Empires', '', false),
    Game('Call of Duty', '', true),
    Game('Battlefield', '', false),
  ];

  static List<Game> listGames() {
    return _myGames;
  }

  static void addGame(Game game) {
    _myGames.add(game);
  }

  static void deleteGame(Game game) {
    _myGames.remove(game);
  }
}
