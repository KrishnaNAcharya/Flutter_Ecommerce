import 'dart:convert';

import 'package:my_project_2/models/product.dart';
import 'package:http/http.dart';

class ProductRepository {
  Future<List<Product>> fetchProducts() async {
    final String url = "https://dummyjson.com/products";
    final Uri uri = Uri.parse(url);
    final Response response = await get(uri);
    final dynamic data = jsonDecode(response.body);
    final List jsonProducts = data['products'];
    final List<Product> products =
        jsonProducts.map<Product>(Product.fromJson).toList();
    return products;
  }
}
