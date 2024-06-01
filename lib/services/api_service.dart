import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/game.dart';

class ApiService {
  static const String baseUrl = 'https://api.rawg.io/api';
  static const String apiKey = '7c31b172b7ad453da8ff4f10555eec09';

  Future<List<Game>> fetchGames(String genre) async {
    final response =
        await http.get(Uri.parse('$baseUrl/games?genres=$genre&key=$apiKey'));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body)['results'];
      return jsonResponse.map((game) => Game.fromJson(game)).toList();
    } else {
      throw Exception('Failed to load games');
    }
  }
}
