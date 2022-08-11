import 'package:flutter/material.dart';
import 'package:new_project/models/food.dart';

class DetailFoodItem extends StatelessWidget {
  Food food;

  DetailFoodItem({required this.food});

  @override
  Widget build(BuildContext context) {
    double widthDevice = MediaQuery.of(context).size.width;
    double heightDevice = MediaQuery.of(context).size.height;

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Chi tiết ${food.name}'),
      ),
      body: Column(
        children: [
          Container(
            width: widthDevice,
            height: heightDevice / 4,
            child: FadeInImage.assetNetwork(
              placeholder: 'assets/images/loading.gif',
              image: food.urlImage!,
              fit: BoxFit.fitWidth,
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text('Thành phần món ăn!', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: food.ingredients.length,
                  itemBuilder: (context, index) {
                    String ingredient = food.ingredients[index];
                    return ListTile(
                      leading: CircleAvatar(
                        child: Text('${index+1}'),
                      ),
                      title: Text(
                        ingredient,
                        style: TextStyle(fontSize: 20),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
