class Reciepe {
  final String? title;
  final String? description;
  final List<String>? ingredients;

  Reciepe({this.title, this.description, this.ingredients});

  factory Reciepe.fromJson(Map<String, dynamic> json) {
    return Reciepe(
      title: json['title'],
      description: json['description'],
      ingredients: List<String>.from(json['ingredients']),
    );
  }
  Reciepe copyWith({
    String? title,
    String? description,
    List<String>? ingredients,
  }) {
    return Reciepe(
      title: title ?? this.title,
      description: description ?? this.description,
      ingredients: ingredients ?? this.ingredients,
    );
  }
}