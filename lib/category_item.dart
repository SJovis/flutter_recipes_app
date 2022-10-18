import 'package:flutter/material.dart';
import './category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;
  final String id;
  const CategoryItem(
      {super.key, required this.title, required this.color, required this.id});

  void selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed(
      CategoryMealsScreen.routeName,
      arguments: {
        'id': id,
        'title': title,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).colorScheme.primary,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline5!.copyWith(
              color: Colors.grey.shade100,
              shadows: [
                const Shadow(
                  offset: Offset(0.0, 5.0),
                  blurRadius: 20.0,
                  color: Color.fromARGB(50, 0, 0, 0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
