import 'package:flutter/material.dart';

class PokemonItem extends StatelessWidget {
  // final int id;
  final String name;
  final String url;

  const PokemonItem({
    super.key,
    // required this.id,
    required this.name,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        leading: Text(
          // id.toString(),
          url,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        title: Text(
          name,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
