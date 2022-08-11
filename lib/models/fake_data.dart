import 'package:flutter/material.dart';
import 'package:new_project/models/food.dart';
import 'category.dart';

final FAKE_CATEGORIES = [
  Category(id: 1, content: "Pizza", color: Colors.pink),
  Category(id: 2, content: "Đồ Nhật", color: Colors.redAccent),
  Category(id: 3, content: "Hamburgers", color: Colors.indigo),
  Category(id: 4, content: "Đồ Việt", color: Colors.green),
  Category(id: 5, content: "Đồ Mỹ", color: Colors.brown),
];

final FAKE_FOOD = [
  Food(id: 1,
      name: "Chả cuốn",
      urlImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6hkfu658iwR6zo3-9NY_7RtAEbOYAx_mluA&usqp=CAU",
      duration: Duration(minutes: 25),
      complexity: Complexity.Simple,
      ingredients: ['Bánh đa','Tôm','Rau thơm'],
      categoryId: 4),
  Food(id: 2,
      name: "Xúc xích",
      urlImage: "https://suno.vn/blog/wp-content/uploads/2017/09/4-bi-quyet-ban-do-an-vat-qua-mang-kiem-tien-trieu-moi-ngay.jpg",
      duration: Duration(minutes: 15),
      complexity: Complexity.Medium,
      ingredients: ['Bánh đa','Tôm','Rau thơm'],
      categoryId: 1),
  Food(id: 3,
      name: "Chả cuốn",
      urlImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6hkfu658iwR6zo3-9NY_7RtAEbOYAx_mluA&usqp=CAU",
      duration: Duration(minutes: 25),
      complexity: Complexity.Simple,
      ingredients: ['Bánh đa','Tôm','Rau thơm'],
      categoryId: 2),
  Food(id: 4,
      name: "Chả cuốn",
      urlImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6hkfu658iwR6zo3-9NY_7RtAEbOYAx_mluA&usqp=CAU",
      duration: Duration(minutes: 25),
      complexity: Complexity.Simple,
      ingredients: ['Bánh đa','Tôm','Rau thơm'],
      categoryId: 3),
  Food(id: 5,
      name: "Chả cuốn",
      urlImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6hkfu658iwR6zo3-9NY_7RtAEbOYAx_mluA&usqp=CAU",
      duration: Duration(minutes: 25),
      complexity: Complexity.Simple,
      ingredients: ['Bánh đa','Tôm','Rau thơm'],
      categoryId: 1),
  Food(id: 6,
      name: "Chả cuốn",
      urlImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6hkfu658iwR6zo3-9NY_7RtAEbOYAx_mluA&usqp=CAU",
      duration: Duration(minutes: 25),
      complexity: Complexity.Simple,
      ingredients: ['Bánh đa','Tôm','Rau thơm'],
      categoryId: 4),


];