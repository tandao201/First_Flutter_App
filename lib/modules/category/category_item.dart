import 'package:flutter/material.dart';
import 'package:new_project/models/category.dart';
import 'package:new_project/modules/food/food_page.dart';

class CategoryItem extends StatelessWidget {

  Category category;
  CategoryItem({required this.category});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Color? _color = category.color;
    void onTapToItem() {
      print("Tap to item! ${category.content}");
      Navigator.pushNamed(context, FoodPage.routeName ,arguments: {'category': category});
    }
    return InkWell(
      onTap: onTapToItem,
      splashColor: Colors.deepPurple,
      child: Container(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient (
                  colors: [
                    _color.withOpacity(0.6),
                    _color
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight
              ),
              color: _color,
              borderRadius: BorderRadius.circular(15)
          ),
          child: Center(
            child: Text(category.content, style: const TextStyle(color: Colors.white,fontSize: 18, fontFamily: 'DynaPuff')),
          ),
        ),
      ),
    );
  }
}