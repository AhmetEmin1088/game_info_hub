import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/game_provider.dart';
import 'screens/game_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => GameProvider(),
      child: MaterialApp(
        title: 'Game Info Hub',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          // Özel renk şemaları
          primaryColor: Colors.blue,
          hintColor: Colors.orange,
          // Özel fontlar
          fontFamily: 'Montserrat',
        ),
        home: GenreSelectionScreen(),
      ),
    );
  }
}

class GenreSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Genre'),
      ),
      body: ListView(
        children: [
          'Action',
          'Adventure',
          'Shooter',
          'Strategy',
          'Puzzle',
          'Racing',
          'Sports'
        ]
            .map(
              (genre) => InkWell(
                onTap: () {
                  Provider.of<GameProvider>(context, listen: false)
                      .fetchGamesByGenre(genre.toLowerCase());
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          FadeTransition(
                        opacity: animation,
                        child: GameListScreen(genre: genre),
                      ),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        return SlideTransition(
                          position: Tween(
                            begin: Offset(0.0, 1.0),
                            end: Offset.zero,
                          ).animate(animation),
                          child: child,
                        );
                      },
                      transitionDuration: Duration(milliseconds: 500),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 8.0),
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Center(
                    child: Text(
                      genre,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
