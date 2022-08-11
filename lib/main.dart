import 'package:flutter/material.dart';
import 'package:new_project/modules/category/categories_page.dart';
import 'package:new_project/modules/food/food_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        FoodPage.routeName: (context) => FoodPage(),
        CategoriesPage.routeName: (context) => CategoriesPage()
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Loại đồ ăn'),
          centerTitle: true,
        ),
        body: CategoriesPage()
      ),
    );
  }
}


