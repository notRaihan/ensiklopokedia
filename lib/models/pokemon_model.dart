class PokemonModel {
  // final int id;
  final String name;
  final String url;

  PokemonModel({required this.name, required this.url});

  factory PokemonModel.fromJson(Map<String, dynamic> json) {
    return PokemonModel(
      // id: json['id'],
      name: json['name'],
      url: json['url'],
    );
  }
}
