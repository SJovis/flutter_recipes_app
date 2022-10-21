import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(12),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).colorScheme.secondary,
            child: Text(
              'Cooking Up!',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Theme.of(context).colorScheme.primary),
            ),
          ),
          const SizedBox(height: 20),
          buildListTile('Meals', Icons.restaurant),
          buildListTile('Settings', Icons.settings),
        ],
      ),
    );
  }

  Widget buildListTile(String title, IconData icon) {
    return ListTile(
      onTap: () {},
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 26,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
