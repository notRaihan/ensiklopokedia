import 'package:dio/dio.dart';
import 'package:ensiklopokedia/models/pokemon_model.dart';

class PokemonAPI {
  final Dio _dio = Dio();

  Future<PokemonModel> getPokemon(String name) async {
    try {
      final response =
          await _dio.get('https://pokeapi.co/api/v2/pokemon/$name');
      return PokemonModel.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  Future<List<PokemonModel>> getPokemonList(int limit, int offset) async {
    try {
      final response = await _dio
          .get('https://pokeapi.co/api/v2/pokemon?limit=$limit&offset=$offset');
      final List<PokemonModel> pokemonList = [];
      for (final item in response.data['results']) {
        final pokemon = PokemonModel.fromJson(item);
        pokemonList.add(pokemon);
      }
      return pokemonList;
    } catch (e) {
      rethrow;
    }
  }
}
