class Game {
  final int id;
  final String name;
  final String released;
  final String backgroundImage;
  final double rating;

  Game({
    required this.id,
    required this.name,
    required this.released,
    required this.backgroundImage,
    required this.rating,
  });

  factory Game.fromJson(Map<String, dynamic> json) {
    return Game(
      id: json['id'],
      name: json['name'],
      released: json['released'],
      backgroundImage: json['background_image'],
      rating: json['rating'].toDouble(),
    );
  }
}
