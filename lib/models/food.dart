class Food {
  int? id;
  String? name, urlImage;
  Duration? duration;
  Complexity? complexity;
  List<String> ingredients = <String>[];
  int? categoryId;

  Food({required this.id, required this.name, required this.urlImage, required this.duration, required this.complexity,
    required this.ingredients, required this.categoryId});

  String convertEnumToString() => complexity.toString().split('.').last;

}

enum Complexity {
  Simple,
  Medium,
  Hard
}

