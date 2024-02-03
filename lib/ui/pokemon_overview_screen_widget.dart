import 'package:ensiklopokedia/ui/list/paged_pokemon_list_view.dart';
import 'package:ensiklopokedia/widgets/appbar_pokemon_widget.dart';
import 'package:flutter/material.dart';

class PokemonOverviewScreen extends StatefulWidget {
  const PokemonOverviewScreen({super.key});

  @override
  State<PokemonOverviewScreen> createState() => _PokemonOverviewScreenState();
}

class _PokemonOverviewScreenState extends State<PokemonOverviewScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarLogoMenu(),
      body: PagedPokemonListView(),
    );
  }
}
