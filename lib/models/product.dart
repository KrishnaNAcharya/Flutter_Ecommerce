class Product {
  final int id;
  final String title;
  final String description;
  final double price;
  // ? for adding null values
  final String? thumbnail;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.thumbnail,
  });
  static Product fromJson(Map <String,dynamic> json){
    return Product(
        id: json['id'],
        title: json['title'], description: json['description'], price: json['price'], thumbnail: json['thumbnail']);
  }
}