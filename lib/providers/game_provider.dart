import 'package:flutter/material.dart';
import '../models/game.dart';
import '../services/api_service.dart';

class GameProvider with ChangeNotifier {
  List<Game> _games = [];
  bool _isLoading = false;

  List<Game> get games => _games;
  bool get isLoading => _isLoading;

  Future<void> fetchGamesByGenre(String genre) async {
    _isLoading = true;
    notifyListeners();

    try {
      _games = await ApiService().fetchGames(genre);
    } catch (e) {
      print(e);
    }

    _isLoading = false;
    notifyListeners();
  }
}
