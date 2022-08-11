import 'package:flutter/material.dart';
import 'package:new_project/models/category.dart';
import 'package:new_project/models/fake_data.dart';
import 'package:new_project/models/food.dart';

import 'detail_food_item.dart';

class FoodPage extends StatelessWidget {
  static const String routeName = '/FoodPage';
  Category? category;

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> arguments =
        ModalRoute.of(context)?.settings.arguments as Map<String, Category>;
    category = arguments['category'];
    // TODO: implement build
    List<Food> foods =
        FAKE_FOOD.where((food) => food.categoryId == category?.id).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text('${category?.content}'),
      ),
      body: Center(
        child: Center(
          child: foods.length > 0
              ? ListView.builder(
                  // reverse: true,
                  itemCount: foods.length,
                  itemBuilder: (context, index) {
                    Food food = foods[index];
                    return FoodItem(food: food);
                  })
              : Center(
                  child: Text('Không có món ăn!'),
                ),
        ),
      ),
    );
  }
}

class FoodItem extends StatelessWidget {
  final Food food;

  FoodItem({required this.food});

  @override
  Widget build(BuildContext context) {
    double widthDevice = MediaQuery.of(context).size.width;
    double heightDevice = MediaQuery.of(context).size.height;
    // TODO: implement build
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailFoodItem(food: food)));
      },
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              clipBehavior: Clip.hardEdge,
              child: Container(
                width: widthDevice,
                height: heightDevice / 4,
                child: FadeInImage.assetNetwork(
                  placeholder: "assets/images/loading.gif",
                  image: food.urlImage!,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
          Positioned(
            top: 30,
            left: 30,
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.white, width: 2)),
              child: Row(
                children: [
                  Icon(Icons.timer, color: Colors.white, size: 25),
                  Text(
                    '${food.duration!.inMinutes} minutes',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 30,
            right: 30,
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.white, width: 2)),
              child: Text(
                food.convertEnumToString(),
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
