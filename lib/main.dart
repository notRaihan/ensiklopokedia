import 'package:ensiklopokedia/ui/pokemon_overview_screen_widget.dart';
import 'package:ensiklopokedia/widgets/appbar_pokemon_widget.dart';
import 'package:ensiklopokedia/widgets/pokemon_list_item_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PokemonOverviewScreen(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: AppBarLogoMenu(),
        body: PokemonItem(
            name: "pikachu",
            url:
                "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/25.png"));
  }
}
