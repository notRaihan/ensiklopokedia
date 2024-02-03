import 'package:flutter/material.dart';

class AppBarLogoMenu extends StatelessWidget implements PreferredSizeWidget {
  const AppBarLogoMenu({super.key});

  @override
  Size get preferredSize =>
      const Size.fromHeight(100); // Set preferred height here

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: AppBar(
        backgroundColor: Colors.transparent,
        leading: const Icon(
          Icons.arrow_back_ios,
          size: 20,
        ),
        title: const Center(
          child: Image(
            image: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/International_Pok%C3%A9mon_logo.svg/2560px-International_Pok%C3%A9mon_logo.svg.png'),
            width: 100,
          ),
        ),
        actions: const [
          Image(
            image: NetworkImage(
                'https://www.pngall.com/wp-content/uploads/4/Pokemon-Pokeball-PNG-Photo.png'),
            fit: BoxFit.cover,
            width: 30,
          ),
        ],
      ),
    );
  }
}
