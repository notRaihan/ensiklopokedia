import 'package:ensiklopokedia/api/pokemon_api.dart';
import 'package:ensiklopokedia/models/pokemon_model.dart';
import 'package:ensiklopokedia/widgets/pokemon_list_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class PagedPokemonListView extends StatefulWidget {
  const PagedPokemonListView({Key? key}) : super(key: key);

  @override
  State<PagedPokemonListView> createState() => _PagedPokemonListViewState();
}

class _PagedPokemonListViewState extends State<PagedPokemonListView> {
  static const int _pageSize = 20;

  final PagingController<int, PokemonModel> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  Widget build(BuildContext context) {
    return PagedListView<int, PokemonModel>(
      pagingController: _pagingController,
      builderDelegate: PagedChildBuilderDelegate<PokemonModel>(
          itemBuilder: (context, item, index) =>
              PokemonItem(name: item.name, url: "none")),
    );
  }

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPokemonAPIList(pageKey);
    });
    super.initState();
  }

  Future<void> _fetchPokemonAPIList(int pageKey) async {
    try {
      final newItems = await PokemonAPI().getPokemonList(_pageSize, pageKey);
      final isLastPage = newItems.length < _pageSize;
      if (isLastPage) {
        _pagingController.appendLastPage(newItems);
      } else {
        final nextPageKey = pageKey + newItems.length;
        _pagingController.appendPage(newItems, nextPageKey);
      }
    } catch (error) {
      _pagingController.error = error;
    }
  }
}
