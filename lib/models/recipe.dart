class Recipe {
  final String name;
  final String imageUrl;
  final String description;
  final String instructions;

  Recipe({
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.instructions,
  });

  Map<String, dynamic> toJson() => {
        'name': name,
        'imageUrl': imageUrl,
        'description': description,
        'instructions': instructions,
      };

  factory Recipe.fromJson(Map<String, dynamic> json) => Recipe(
        name: json['name'] as String,
        imageUrl: json['imageUrl'] as String,
        description: json['description'] as String,
        instructions: json['instructions'] as String,
      );
}
