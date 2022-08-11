import 'package:flutter/material.dart';
import 'package:new_project/models/fake_data.dart';
import 'package:new_project/modules/category/category_item.dart';

class CategoriesPage extends StatelessWidget {
  static const String routeName = '/CategoriesPage';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView(
      padding: const EdgeInsets.all(15),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          childAspectRatio: 3/2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10
      ),
      children: FAKE_CATEGORIES.map((categoryItem) => CategoryItem(category: categoryItem)).toList(),
    );
  }
}