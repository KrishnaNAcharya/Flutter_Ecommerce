class Product {
  final int id;
  final String title;
  final String description;
  final double price;
  final String thumbnail;

  Product(
      this.id,{
        required this.title,
        required this.description,
        required this.price,
        required this.thumbnail,
      });
  static Product fromJson(dynamic json) {
    return Product(
      json['id'],
      title: json['title'],
      description: json['description'],
      price: json['price'],
      thumbnail: json['thumbnail'],
    );
  }
  @override
  String toString(){
    return '{title:$title}';
    }
}